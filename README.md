Suppose your career depends on solving equations like

![Equation 1](http://s9.postimg.org/i1jtfiy57/eq1.png)

or more intimidating ones as

![Equation 2](http://s27.postimg.org/pwodij5bj/eq2.png)

and your magic tricks toolbox fail to handle it.
What is the last resort?

## Synopsis

Maxima package to solve hypergeometric sums.

## Description

__hipergeo__ is a hypergeometric package for the computer algebra system Maxima featuring:
- Sister Celine implementation;
- friendly link to Gosper implementation from `zeilberger' package;
- Builds full recurrence from Zeilberger's algorithm;
- WZ and WZ certificate implementation.

Please, refer to the seminal [A=B book](http://www.amazon.com/A-B-Marko-Petkovsek/dp/1568810636) by
Petkovsek, Wilf and Zeilberger for algorithms.

Moreover, you can refer to my _dissertation-pt_BR.pdf_ for portuguese
documentation. Here, you have practical introduction to hypergeometric
summation 100% Maxima-oriented with some level of deepness on the algorithms
throughout the text.


## Using the library

In Maxima, type

```c
> load('hipergeo.mac');
```

in order to load the package.


## To-do and bugs

To-do list:

1. Fix WZ method for some instances.

Any help is appreciated, if you find any error please contact or send a push
request and I will be delighted to cite your amendment.
