//creates inverted matrix
function[inversa]=geraMatrizInversa(matriz)
    [m,n] = size(matriz)
    identidade = geraIdentidade(m,n)
    Aum=[matriz,identidade]
    invertida=gaussJordan(Aum)
    inversa=invertida(:,n+1:2*n)
endfunction
