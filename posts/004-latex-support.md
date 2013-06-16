And now I've added $\LaTeX$ support. [MathJax](http://www.mathjax.org/) provides an easy-to-use library which I took advantage of. Let's take it for a spin.

If $ax^2 + bx + c = 0$, then $$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
To proof this, we must first observe that: $$(p + q)^2 = p^2 + 2pq + q^2$$
We start by dividing both sides of our original equation by $a$:
$$x^2 + \frac{b}{a}x + \frac{c}{a} = 0$$
Subtracting $c/a$ from both sides, we get:
$$x^2 + \frac{b}{a}x = -\frac{c}{a}$$
Keeping our first observation in mind, we can see that adding $(\frac{b}{2a})^2$ to both sides of the equation brings the left hand side of our equation to the form of the right hand side of our observation equation,
$$x^2 + \frac{b}{a}x + (\frac{b}{2a})^2 = (\frac{b}{2a})^2 - \frac{c}{a}$$
which leads us to the conclusion that
$$(x + \frac{b}{2a})^2 = (\frac{b}{2a})^2 - \frac{c}{a}$$
Then we can take the square root of both sides, remembering that both the negative and positive root is a solution:
$$x + \frac{b}{2a} = \pm\sqrt{(\frac{b}{2a})^2 - \frac{c}{a}}$$
Solving for $x$, we get:
$$x = -\frac{b}{2a} \pm \sqrt{(\frac{b}{2a})^2 - \frac{c}{a}}$$
Simplifying inside the square root:
$$x = -\frac{b}{2a} \pm \sqrt{\frac{b^2}{4a^2} - \frac{c}{a}}$$
$$x = -\frac{b}{2a} \pm \sqrt{\frac{b^2}{4a^2} - \frac{4ac}{4a^2}}$$
$$x = -\frac{b}{2a} \pm \sqrt{\frac{b^2 - 4ac}{4a^2}}$$
Then more simplifying:
$$x = -\frac{b}{2a} \pm \frac{\sqrt{b^2 - 4ac}}{\sqrt{4a^2}}$$
$$x = -\frac{b}{2a} \pm \frac{\sqrt{b^2 - 4ac}}{2a}$$
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
And there we have it.

Awesome! I'm loving this.