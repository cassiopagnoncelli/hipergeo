# To-do:
# 2) Port remaining algorithms.
#

maxima("display2d:false")

maxima.load('zeilberger')

# Celine.
maxima("celineIJ(F, n, k, I, J) := block([rec, numerador, coef, eq, vars, solucao, s, troca], rec : ratsimp(minfactorial(sum(sum(a[i,j]*makefact(F(n-j, k-i)),j,0,J),i,0,I) / makefact(F(n,k)))), numerator : collectterms(expand(num(rec)), k), coef : map(lambda([grau], coeff(numerator, k, grau)), makelist(g, g, 0, hipow(numerator, k))), eq : map(lambda([x], x = 0), coef), vars : flatten(makelist(makelist(a[i,j], j, 0, J), i, 0, I)), solution : solve(eq, vars)[1], s : makelist(makelist(rhs(solution[i*(J+1) + j + 1]), j, 0, J), i, 0, I), exchange : makelist(%rnum_list[i] = K[i], i, 1, length(%rnum_list)), solution : sublis(exchange, s), return(solution))")

maxima("celinerec(M) := block([f, Aj, rec], Aj : map(lambda([list], sum(list[i], i, 1, length(list))), M), rec : sum(Aj[1+j] * f[n-j], j, 0, length(Aj)-1) = 0, return(rec))")

def celineIJ(F, n, k, I, J):
	str_F, str_n, str_k = str(F), str(n), str(k)
	left = "F(" + str_n + "," + str_k + ")"
	maxima(left + " := " + str_F)
	return maxima.eval("celineIJ(" + left + "," + str_n + "," + str_k + "," + str(I) + "," + str(J) + ")")

def celinerec(m):
	return maxima("celinerec(" + m + ")")

# Gosper.
maxima("gosper(t, k) := minfactorial(ratsimp(AntiDifference(t(k), k)))")

maxima("hpc(pol, var) := coeff(expand(pol), var, hipow(expand(pol), var))")

maxima("gosperzfg(t, n) := block([r, F, G, f, g, Z], r : ratsimp(minfactorial(makefact(t(n+1) / t(n)))), F : num(r), G : denom(r), f : expand(ratsimp(F / hpc(F, n))), g : expand(ratsimp(G / hpc(G, n))), Z : hpc(F, n) / hpc(G, n), return([Z, f, g]))")

def gosper(expr, var):
	str_var = str(var)
	left = "t(" + str_var + ")"
	maxima(left + " := " + str(expr))
	return maxima("gosper(" + left + ", " + str_var + ")")

def gosperzfg(expr, var):
	str_var = str(var)
	left = "t(" + str_var + ")"
	maxima(left + " := " + str(expr))
	return maxima("gosperzfg(" + left + ", " + str_var + ")")

# Zeilberger.
maxima("zeilbergerrec(F, n, k) := block([], solutions : Zeilberger(F(n,k), k, n), if length(solutions) = 0 then return(ZEILBERGER_FAILED), R(n,k) := solutions[1][1], Aj : solutions[1][2], G(n,k) := R(n,k) * F(n,k), left : sum(Aj[j] * F[n+j,k], j, 1, length(Aj)), right : G(n,k+1) - G(n,k), return(left = right))")

def zeilbergerrec(expr, n, k):
	str_expr, str_n, str_k = str(expr), str(n), str(k)
	left = "F(" + str_n + "," + str_k + ")"
	maxima(left + " := " + str_expr)
	return maxima("zeilbergerrec(F," + str_n + "," + str_k + ")")

