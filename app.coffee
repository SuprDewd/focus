
# Module dependencies.
express = require 'express'
http    = require 'http'
path    = require 'path'
stylus  = require 'stylus'
nib     = require 'nib'
marked  = require 'marked'
fs      = require 'fs'
hljs    = require 'highlight.js'
helpers = require './helpers'
{Post}  = require './post'
{lang_names} = require './lang_names'

# Load configuration
config  = require './config.json'
config.posts = path.resolve(__dirname, config.posts)
config.port = process.env.PORT || config.port

# Configure Markdown parser
marked.setOptions
  gfm: true
  pedantic: false
  sanitize: false
  highlight: (code, lang) ->
    lines = code.split /\r?\n|\r/
    line_cnt = lines.length
    hi = if lang? and hljs.LANGUAGES.hasOwnProperty(lang) then hljs.highlight(lang, code) else hljs.highlightAuto(code)

    lang ?= hi.language

    res = '<code class="full-code">'
    res += '<div class="lang-name">' + lang_names[lang] + '</div>' if lang?
    res += '<pre><div><div class="line-numbers">'

    for i in [1..line_cnt]
      res += '\n' if i isnt 1
      res += i

    res += '</div>'
    res += hi.value.replace(/\$/g, '&#36;')
    res += '</div></pre>'
    res += '</code>'
    res

# Post loading
posts = []
posts_config = path.join(config.posts, 'index.json')
last_load_posts = null
load_posts = (callback) ->
  fs.readFile posts_config, (err, post_index) ->
    post_index = JSON.parse post_index
    last_load_posts = new Date()
    posts = (new Post(id, p) for id, p of post_index.posts)
    posts.sort (a, b) ->
      if a.date < b.date then 1 else if a.date > b.date then -1 else 0
    remaining = posts.length
    process = (p) ->
      fs.readFile path.join(config.posts, p.id + '.' + p.type), (err, contents) ->
        p.content = switch p.type
          when "md" then marked(contents.toString())
          when "html" then hl(contents.toString()).value #, false, true)
          else throw new Error('Undefined post type: "#{p.type}"');
        if --remaining is 0
          callback()
    for p in posts
      process p

# Configure the application
app = express()

isDev = false

app.configure () ->
  app.set 'port', config.port
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use stylus.middleware(
    src: __dirname + '/public'
    compile: (str, path) ->
      stylus(str).set('filename', path).use(nib())
  )
  app.use express.static(path.join(__dirname, 'public'))
  app.use express.static(path.join(config.posts, 'public'))

app.configure 'development', () ->
  isDev = true
  app.use express.logger('dev')
  app.use express.errorHandler()

# Routes
app.get '/', (req, res) ->
  serve = () ->
    res.render 'index',
      posts: (p for p in posts when p.isPublished())

  if isDev
    load_posts serve
  else
    fs.stat posts_config, (err, stats) ->
      if !err? and stats.mtime > last_load_posts
        load_posts serve
      else
        serve()

# Start the application
load_posts () ->
  http.createServer(app).listen app.get('port'), config.host, () ->
    console.log "Express server listening on port #{app.get 'port'}"