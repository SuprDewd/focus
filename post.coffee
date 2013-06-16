helpers = require './helpers'

class Post
  constructor: (@id, options) ->
    @title = options.title
    @author = options.author
    @date = helpers.stringToDateJSON options.date
    @publish = if options.publish in ["now", "never"] then options.publish else helpers.stringToDateJSON options.publish
    @type = options.type
    @content = null

  isPublished: (dt) ->
    return true if @publish is "now"
    return false if @publish is "never"
    dt = new Date() if not dt?
    @publish <= dt

  dateShort: () ->
    helpers.dateFormat @date, "mmmm dS, yyyy"

exports.Post = Post