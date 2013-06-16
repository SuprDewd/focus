CoffeeScript is yet another awesome tool (loosely) related to Node.js. I actually took a look at CoffeeScript when it was first getting popular (probably a year ago), but I didn't think this was something for me.

CoffeeScript, just like the Jade and Stylus that I recently blogged about, is a language that gets compiled to another language, but this time it's the Ruby/Python-like CoffeeScript syntax that gets compiled to JavaScript. A code example is probably worth a couple-hundred words:

```coffeescript
sum = 0
sum += i for i in [1..999] when i % 3 is 0 or i % 5 is 0
console.log "The answer is #{sum}!"
```

This CoffeeScript code (actually the solution to [Project Euler's first problem](http://projecteuler.net/problem=1)) is then converted to the following JavaScript code:

```javascript
var i, sum, _i;

sum = 0;

for (i = _i = 1; _i <= 999; i = ++_i) {
	if (i % 3 === 0 || i % 5 === 0) {
		sum += i;
	}
}

console.log("The answer is " + sum + "!");
```

So as you can see from this (rather bad) exmaple, CoffeeScript is much cleaner. Take a look at [CoffeeScript's website](http://coffeescript.org/) for way cooler examples, and an interactive compiler.

CoffeeScript is a subset of JavaScript, getting rid of many bad parts of JavaScript, and wrapping the good parts in an awesome, and clean, syntax. It's easy to use CoffeeScript both on the client side and server side with Node.js, which is what I've been using CoffeeScript for. JavaScript is a fun and awesome language, but CoffeeScript takes it a step further.