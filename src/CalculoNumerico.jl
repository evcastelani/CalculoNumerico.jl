module CalculoNumerico

@doc raw"
	newton_raphson

Esta função implementa uma básica versão do método de Newton-Raphson. Essencialmente, esta implementação depende de um ponto inicial ``x_0``, uma função $f$ e sua derivada $f'$. Estabelecida uma precisão $ε$, o método de Newton-Raphson gera uma sequência iterativa 
	$$x_{k+1} = x_{k} -frac{f(x_k)}{f'(x_k)},$$
que, sob certas condições converge para solução do problema. 
	Esta função retorna a raiz, o valor da função na raiz e o número de iterações necessárias. 

# Exemplo

colocar exemplo
"
function newton_raphson(x0,f,df,ε=10.0^(-4))
	x = x0 - f(x0)/df(x0)
	k = 1
	while abs(x-x0)>=ε && abs(f(x))>ε
		x0 = x
		x = x0 - f(x0)/df(x0)
		k += 1
	end
	return x,f(x),k
end

end # module
