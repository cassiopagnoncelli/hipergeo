Suppose your career depends on solving sums like

![Equation 1](http://s9.postimg.org/i1jtfiy57/eq1.png)

or more intimidating ones as

![Equation 2](http://s27.postimg.org/pwodij5bj/eq2.png)

and your magic tricks toolbox fail to handle it.
What is the last resort?

## Synopsis

I developed a Maxima package to either solve hypergeometric sums or prove they cannot be solved.

## Description

__hipergeo__ is a hypergeometric package for the computer algebra system Maxima featuring:

- Sister Celine implementation;
- friendly link to Gosper implementation from `zeilberger' package;
- Builds full recurrence from Zeilberger's algorithm;
- Wilf-Zeilberger proof machinery along with WZ certificate implementation.

For Portuguese readers, you can refer to [base text](./cassio-pagnoncelli.pdf) for usage, algorithms,
theory, etc.
Here you will have a pragmatic introduction to hypergeometric summation, 100% Maxima-oriented.

As for English readers, you can refer to the seminal
[A=B book](http://www.amazon.com/A-B-Marko-Petkovsek/dp/1568810636)
by Petkovsek, Wilf and Zeilberger for more details on the algorithms and a deeper insight into the theory.
(This book uses Maple and Mathematica computer algebra systems rather than open source Maxima.)

## Using the library

In Maxima, type

```c
> load('hipergeo.mac');
```

in order to load the package and browse the examples in the same directory.

First example can merely be solved by first finding the anti-difference of the summand,

```c
> summand(k) := k*k!;
> antidiff : gosper(summand, k);
k!
```
and, by applying the fundamental theorem of calculus, that sum becomes n! - 1.

Any help is appreciated, should you find any error please contact or send a push
request and I will be delighted to cite your amendment.
