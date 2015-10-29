# Variables.
n = var("n")
k = var("k")

#
# Sister Celine's algorithm provides a recurrence satisfying
#
#   sum(F(n,k), k=-Inf..Inf) = 1,
#
# effectively solving the definite summation problem for hypergeometric class.
#

celinerec(celineIJ(k*binomial(n,k), n, k, 1, 1))

#
# Gosper's anti difference algorithm finds hypergeometric anti-derivative,
# infinitesimal calculus' equivalent to anti-derivative in finite difference
# calculus.
#

gosper(k*factorial(k), k)

#
# Another Gosper's method portion is to rewrite an univariate hypergeometric
# term in the form
#
#   Z * f(n) / g(n),
# 
# where f, g are monic, relative primes polynomials and Z is a constant
# compensating due loads, returning this triplet.
#

gosperzfg(binomial(2*n, n) * 2^n, n)

#
# Zeilberger's creative telescoping finds a special polynomial recurrence
# for identities of the form
#
#   hypergeometric sum == another hypergeometric term,
#
# pivotal in WZ proof machinery.
#

zeilbergerrec(binomial(n,k)^2, n, k)
