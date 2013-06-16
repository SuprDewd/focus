<style type="text/css">
	#post-009-mathematics-I-problem-set-1 .sign_table {
		text-align: center;
		margin-bottom: 15px;
		margin-left: auto;
		margin-right: auto;
	}

	#post-009-mathematics-I-problem-set-1 .sign_table td, .sign_table th {
		padding: 3px 8px;
	}

	#post-009-mathematics-I-problem-set-1 .sign_table th {
		border-bottom: 1px solid #555;
	}

	#post-009-mathematics-I-problem-set-1 .sign_table .first {
		border-right: 1px solid #555;
	}
	
	#post-009-mathematics-I-problem-set-1 .table_4 {
		text-align: center;
		margin-bottom: 15px;
		margin-left: auto;
		margin-right: auto;
	}

	#post-009-mathematics-I-problem-set-1 .table_4 td, .table_4 th {
		padding: 3px 8px;
	}

	#post-009-mathematics-I-problem-set-1 .table_4 th {
		border-top: 1px solid #555;
		border-bottom: 1px solid #555;
	}

	#post-009-mathematics-I-problem-set-1 .table_4 .missing {
		color: #e24;
	}

	#post-009-mathematics-I-problem-set-1 .table_4 .last {
		border-top: 1px solid #555;
	}

</style>

The first problem set for Mathematics I course was put online yesterday, and I'm going to solve it right here on the blog. Since I don't know much about the course, I'm not going to introduce it until I go to my first class. But just as a quick overview for this problem set: it's a Calculus course, using the [Calculus: A Complete Course](http://www.amazon.com/Calculus-Complete-Course-Robert-Adams/dp/1408265524/) book. This first problem set covers the preliminary chapters of the book. So, let's begin.

P.1
===
The first preliminary chapter covers real numbers, or $\mathbb{R}$, and their properties, intervals, solving inequalities and the absolute value function. The exercises chosen for the problem set are the following:

> In Exercises 7-12, express the set of all real numbers $x$ satisfying the given conditions as an interval or a union of intervals.

> **8.** $\hspace{6 mm}x < 2$ and $x \ge -3$
> > This is the intersection of two intervals. The first interval is $(-\infty, 2)$ and the second interval is $\[-3, \infty)$. The intersection of these intervals is $\[-3, 2)$. It might be better to visualize it:  
> > 
> > $x < 2$:  
> > <div style="text-align:center">![Visualization of P.1 problem 8 no. 1](/content_images/P_1_8_1.png)</div>
> > 
> > $x \ge -3$:  
> > <div style="text-align:center">![Visualization of P.1 problem 8 no. 2](/content_images/P_1_8_2.png)</div>
> > 
> > $x < 2$ and $x \ge -3$:  
> > <div style="text-align:center">![Visualization of P.1 problem 8 no. 3](/content_images/P_1_8_3.png)</div>
> > 
> > Now the answer can be clearly seen.

> **9.** $\hspace{6 mm}x > -5$ or $x < -6$
> > Same as problem 8, but now we are uniting the intervals instead of intersecting them. The first interval is $(-5, \infty)$ and the second interval is $(-\infty, -6)$. The answer is therefore $(-\infty, -6) \cup (-5, \infty)$, which I don't think can be simplified more.

> In Exercises 13-26, solve the given inequality, giving the solution set as an interval or union of intervals.

> **18.** $\hspace{6 mm}x^2 < 9$
> > We first solve $x^2 = 9$. Taking the square root on both sides, we get $x = \pm 3$. We can then see that $x^2 < 9$ will hold for either $(-3, 3)$ or $(-\infty, -3\] \cup \[3, \infty)$. By testing a value from either of the intervals, we find that $(-3, 3)$ is the interval that holds, and is therefore the answer.

> **19.** $\hspace{6 mm}\displaystyle\frac{1}{2 - x} < 3$
> > We first subtract $3$ from both sides, yielding $\frac{1}{2 - x} - 3 < 0$. Then with some manipulations, we get $$\displaystyle\frac{1}{2 - x} - \frac{3(2 - x)}{2 -x} < 0$$ $$\displaystyle\frac{1 - 3(2 - x)}{2 - x} < 0$$ $$\displaystyle\frac{1 - (6 - 3x)}{2 - x} < 0$$ $$\displaystyle\frac{1 - 6 + 3x}{2 - x} < 0$$ and finally $$\displaystyle\frac{3x - 5}{2 - x} < 0$$
> > Now we can examine the signs of the two factors, $3x - 5$ and $2 - x$, in order to find when the equation results in a value less than $0$.
> > <table class="sign_table">
> > 	<tr><th class="first">$x$</th><th></th><th>$5/3$</th><th></th><th>$2$</th><th></th></tr>
> > 	<tr><td class="first">$3x - 5$</td><td>$-$</td><td>$0$</td><td>$+$</td><td>$+$</td><td>$+$</td></tr>
> > 	<tr><td class="first">$2 - x$</td><td>$+$</td><td>$+$</td><td>$+$</td><td>$0$</td><td>$-$</td></tr>
> > 	<tr><td class="first">$\frac{3x - 5}{2 - x}$</td><td>$-$</td><td>$0$</td><td>$+$</td><td>undef.</td><td>$-$</td></tr>
> > </table>
> > And now it's clear that the answer is $(-\infty, 5/3) \cup (2, \infty)$.

> **20.** $\hspace{6 mm}\displaystyle\frac{x + 1}{x} \ge 2$
> > Subtract $2$ from both sides to get $\frac{x + 1}{x} - 2 \ge 0$. The we manipulate the equation like in problem 19: $$\frac{x + 1}{x} - \frac{2x}{x} \ge 0$$ $$\frac{x + 1 - 2x}{x} \ge 0$$ $$\frac{1 - x}{x} \ge 0$$
> > Now we can do a sign table, just like in problem 19.
> > <table class="sign_table">
> > 	<tr><th class="first">$x$</th><th></th><th>$0$</th><th></th><th>$1$</th><th></th></tr>
> > 	<tr><td class="first">$1 - x$</td><td>$+$</td><td>$+$</td><td>$+$</td><td>$0$</td><td>$-$</td></tr>
> > 	<tr><td class="first">$x$</td><td>$-$</td><td>$0$</td><td>$+$</td><td>$+$</td><td>$+$</td></tr>
> > 	<tr><td class="first">$\frac{1 - x}{x}$</td><td>$-$</td><td>undef.</td><td>+</td><td>$0$</td><td>$-$</td></tr>
> > </table>
> > And now it's easy to see that the answer is $(0, 1\]$.

> Solve the equations in Exercises 27-32.

> **29.** $\hspace{6 mm}\displaystyle |2t + 5| = 4$
> > When solving a function with an absolute function, the value given to the absolute function can be either positive or negative. Thus we can split the equation into two different equations, without the absolute function as so:  
> > $2t + 5 = 4$ or $-(2t + 5) = 4$  
> > Now it's easy to solve these equations and find that $t$ is either $-1/2$ or $-9/2$.

> **31.** $\hspace{6 mm}\displaystyle |8 - 3s| = 9$
> > Just like in problem 29, we split the equation into two, $8 - 3s = 9$ or $-(8 - 3s) = 9$, and then it's easy to solve the two equations to get $s$ is either $-1/3$ or $17/3$.

> In Exercises 33-40, write the interval defined by the given inequality.

> **36.** $\hspace{6 mm}\displaystyle |t + 2| < 1$
> > Subtracting $1$ from both sides of the equation gives us $|t + 2| - 1 < 0$. Let's solve $|t + 2| - 1 = 0$ to get the extremes, and that can be accomplished just like in problem 29. We find that $t$ is either $-1$ or $-3$.
> > We can then do a sign table like before:
> > <table class="sign_table">
> > 	<tr><th class="first">$x$</th><th></th><th>$-3$</th><th></th><th>$-1$</th><th></th></tr>
> > 	<tr><td class="first">$|t + 2| - 1$</td><td>$+$</td><td>$0$</td><td>$-$</td><td>$0$</td><td>$+$</td></tr>
> > </table>
> > And like before, it is now easy to see the answer, which in this case is $(-3, -1)$.

P.2
===
The second preliminary chapter covers the Cartesian coordinate system, slopes, equations of lines, graphs and distance between points (the Pythagorean Theorem).

> In Exercises 27-30, determine the $x$- and $y$-intercepts and the slope of the given lines, and sketch their graphs.

> **29.** $\hspace{6 mm}\displaystyle \sqrt{2}x - \sqrt{3}y = 2$
> > First, let's solve for $y$: $$\sqrt{2}x - \sqrt{3}y = 2$$ $$\sqrt{2}x - 2 = \sqrt{3}y$$ $$\frac{\sqrt{2}x - 2}{\sqrt{3}} = y$$
> > Now, let's simplify it a bit: $$y = \sqrt{2/3}x - \frac{2}{\sqrt{3}}$$ $$y = \sqrt{2/3}x - \frac{2}{\sqrt{3}}$$
> > Now it's easy to see the slope of the line and the $y$-intercept, which are $\sqrt{2/3}$ and $-\frac{2}{\sqrt{3}}$, respectively. To find the $x$-intercept, we just need to solve when $y = 0$: $$0 = \sqrt{2/3}x - \frac{2}{\sqrt{3}}$$ $$\frac{2}{\sqrt{3}} = \sqrt{2/3}x$$ $$\frac{2/\sqrt{3}}{\sqrt{2/3}} = x$$ $$\frac{2}{\sqrt{3}\sqrt{2/3}} = x$$ $$\frac{2}{\sqrt{3 \times 2/3}} = x$$ $$\frac{2}{\sqrt{2}} = x$$ $$\frac{2\sqrt{2}}{\sqrt{2}\sqrt{2}} = x$$ $$\frac{2\sqrt{2}}{2} = x$$ $$\sqrt{2} = x$$
> > And so the $x$-intercept is $\sqrt{2}$.

> **37.** $\hspace{6 mm}$Find the $y$-intercept of the line through the points $(2, 1)$ and $(3, -1)$.
> > The slope of the line is $\frac{-1 - 1}{3 - 2} = -2$. So if we have any point $(x, y)$ on the line, then $\frac{y - 1}{x - 2} = -2$. If we solve for $y$, we get $$y - 1 = -2(x - 2)$$ $$y = -2(x - 2) + 1$$ $$y = -2x + 4 + 1$$ $$y = -2x + 5$$
> > And that is the equation of the line. To find the $y$-intercept, we put $x = 0$ into the equation, and get $$y = -2(0) + 5 = 5$$
> > And there we have it, the $y$-intercept is $5$.

P.4
===
Preliminary chapter 4 covers functions, domain and range of functions, graphing functions and even and odd functions.

> **7.** Which of the graphs in Figure P.56 are graphs of functions $y = f(x)$? Why?
> > <div style="text-align:center">![Figure P.56](/content_images/fig_p_56.png)</div>
> > Only graph b is a function of $x$, since it is the only graph that assigns only one $y$ to each $x$.

P.5
===
The fifth preliminary chapter covers all kinds of function composition, piecewise defined functions like the signum function and the floor and ceiling functions.

> In Exercises 8-10, construct the following composite functions and specify the domain of each.

> (**a**) $\hspace{4 mm}f \circ f(x)$  
> (**b**) $\hspace{4 mm}f \circ g(x)$  
> (**c**) $\hspace{4 mm}g \circ f(x)$  
> (**d**) $\hspace{4 mm}g \circ g(x)$

> **9.** $\hspace{6 mm}\displaystyle f(x) = 1/(1 - x),\hspace{3 mm}g(x) = \sqrt{x - 1}$
> > (**a**)
> > > We're calculating $f(f(x))$. It's just a matter of substituting $x$ with $f(x)$ like so: $$f(f(x)) = 1/(1 - 1/(1 - x))$$
> > > Now we should simplify it: $$f(f(x)) = 1/((1 - x)/(1 - x) - 1/(1 - x)) = 1/((1 - x - 1)/(1 - x))$$ $$f(f(x)) = -(1 - x)/x$$
> > > And that's it. Now it's also easy to see that the domain of that function is $(-\infty, 0) \cup (0, \infty)$.

> > (**b**)
> > > Just like before, but now we substitute $x$ with $g(x)$ to get $f(g(x))$:
> > > $$f(g(x)) = 1/(1 - \sqrt{x - 1})$$
> > > To find the domain we must notice where any part of the function becomes undefined. There are two parts of this function that can go wrong, division by zero or taking the square root of a negative number. Taking a square root of a negative number happens in the interval $(-\infty, 1)$ and a division by zero happens when $\sqrt{x - 1}$ is $1$, but that happens when $x = 2$. So the domain of the function is $\[1, 2) \cup (2, \infty)$.

> > (**c**)
> > > Again, by substitution, we get: $$g(f(x)) = \sqrt{1/(1 - x) - 1} = \sqrt{1/(1 - x) - (1 - x)/(1 - x)} = \sqrt{(1 - (1 - x))/(1 - x)}$$ $$g(f(x)) = \sqrt{(1 - 1 + x)/(1 - x)} = \sqrt{x/(1 - x)}$$
> > > I think it would be wise to create a sign table for $x/(1 - x)$ to determine the domain of the function:
> > > <table class="sign_table">
> > > 	<tr><th class="first">$x$</th><th></th><th>$0$</th><th></th><th>$1$</th><th></th></tr>
> > > 	<tr><td class="first">$x$</td><td>$-$</td><td>$0$</td><td>$+$</td><td>$+$</td><td>$+$</td></tr>
> > > 	<tr><td class="first">$1 - x$</td><td>$+$</td><td>$+$</td><td>$+$</td><td>$0$</td><td>$-$</td></tr>
> > > 	<tr><td class="first">$x/(1 - x)$</td><td>$-$</td><td>$0$</td><td>$+$</td><td>undef.</td><td>$-$</td></tr>
> > > </table>
> > > And now it's clear that the domain of the function is $\[0, 1)$.

> > (**d**)
> > > $$g(g(x)) = \sqrt{\sqrt{x - 1} - 1}$$
> > > And the domain is $(2, \infty)$.

> Find the missing entries in Table 4 (Exercises 11-16).

> > <table class="table_4">
> > 	<tr><th></th><th>$f(x)$</th><th>$g(x)$</th><th>$f \circ g(x)$</th></tr>
> > 	<tr><td>**11.**</td><td>$x^2$</td><td>$x + 1$</td><td class="missing">$x^2 + 2x + 1$</td></tr>
> > 	<tr><td>**12.**</td><td class="missing">$x - 4$</td><td>$x + 4$</td><td>$x$</td></tr>
> > 	<tr><td>**13.**</td><td>$\sqrt{x}$</td><td class="missing">$x^2$</td><td>$|x|$</td></tr>
> > 	<tr><td>**14.**</td><td class="missing">$2x^3 + 3$</td><td>$x^{1/3}$</td><td>$2x + 3$</td></tr>
> > 	<tr><td>**15.**</td><td>$(x + 1)/x$</td><td class="missing">$1/(x - 1)$</td><td>$x$</td></tr>
> > 	<tr><td>**16.**</td><td class="missing">$1/(x + 1)^2$</td><td>$x - 1$</td><td>$1/x^2$</td></tr>
> >     <tr class="last"><td colspan="4">**Table 4**</td></tr>
> > </table>
> > I don't think there's much to say about the table. If the missing value is in the $f \circ g(x)$ column, then it's trivial to find, but if it's in the first two columns, it's a bit trickier to find. It's just a matter of doing the right transformations.

> **27.** $\hspace{6 mm}$ Find all real values of the constants $A$ and $B$ for which the function $F(x) = Ax + B$ satisfies:
> > **(a)** $\hspace{6 mm}\displaystyle F \circ F(x) = F(x)$ for all $x$.
> > > Let's do like we've done before, substitute $Ax + B$ for $F(x)$, to get:
> > > $$A(Ax + B) + B = Ax + B$$
> > > $$A^2x + AB + B = Ax + B$$
> > > $$A^2x + AB = Ax$$
> > > $$A^2x - Ax + AB = 0$$
> > > $$A(Ax - x + B) = 0$$
> > > Now we need to solve this equation. I'm not sure how to solve this with pure mathematics, but it's easy to see the solution. One of the solutions is if $A = 0$ and $B \in \mathbb{R}$, and the other solution is if $A = 1$ and $B = 0$. To prove that these are the only solutions, note that if $A \notin \\{0, 1\\}$, then $B$ would have to be a function of $x$ for the equation to hold for all $x$.

> > **(b)** $\hspace{6 mm}\displaystyle F \circ F(x) = x$ for all $x$.
> > > $$A(Ax + B) + B = x$$
> > > $$A^2x + AB + B = x$$
> > > And now it should be pretty clear that the only solution is $A = 1$ and $B = 0$.

P.7
===
The seventh preliminary chapter covers trigonometric function, their identities and how to calculate them.

> In Exercises 43-50, $ABC$ is an arbitrary triangle with sides $a$, $b$, and $c$, opposite to angles $A$, $B$, and $C$, respectively. (See Figure P.92.) Find the indicated quantities. Use tables	or a scientific calculator if necessary.
> <div style="text-align:center">![Figure P.92](/content_images/fig_p_92.png)</div>

> **43.** $\hspace{6 mm}$ Find $\sin B$ if $\displaystyle a = 4, b = 3, A = \frac{\pi}{4}$.
> > By the Sine Law, we know that $$\frac{\sin B}{b} = \frac{\sin A}{a}$$
> > And therefore $$\frac{\sin B}{3} = \frac{\sin \frac{\pi}{4}}{4}$$ $$\sin B = \frac{3\sin \frac{\pi}{4}}{4} = \frac{3}{4\sqrt{2}} \approx 0.53033$$

> **47.** $\hspace{6 mm}$ Find $a$ if $\displaystyle c = 3, A = \frac{\pi}{4}, B = \frac{\pi}{3}$.
> > First we need to remember that the angle sum of any triangle is $\pi$. So $A + B + C = \pi$. We know what $A$ and $B$ are, so $C$ is easy to find. $C = \pi - A - B$ or $C = \pi - \frac{\pi}{4} - \frac{\pi}{3} = \frac{5}{12}\pi$. Then we can, again, use $\frac{\sin A}{a} = \frac{\sin C}{c}$. $$\frac{\sin \frac{\pi}{4}}{a} = \frac{\sin \frac{5}{12}\pi}{3}$$ $$\frac{a}{\sin \frac{\pi}{4}} = \frac{3}{\sin \frac{5}{12}\pi}$$ $$a = \frac{3\sin \frac{\pi}{4}}{\sin \frac{5}{12}\pi} = \frac{6}{1+\sqrt{3}} \approx 2.19615$$

And we're finally done.