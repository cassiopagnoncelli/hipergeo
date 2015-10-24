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
- WZ and WZ certificate implementation.

For portuguese readers, you can refer to [base text](./dissertation-pt_BR.pdf) for usage, algorithms,
theory, etc.
Here you will have a pragmatic introduction to hypergeometric summation, 100% Maxima-oriented.

Moreover, you can refer to the seminal
[A=B book](http://www.amazon.com/A-B-Marko-Petkovsek/dp/1568810636)
by Petkovsek, Wilf and Zeilberger for more details on the algorithms and a deeper insight into the theory.

## Using the library

In Maxima, type

```c
> load('hipergeo.mac');
```

in order to load the package and browse the examples in the same directory.

Any help is appreciated, should you find any error please contact or send a push
request and I will be delighted to cite your amendment.
