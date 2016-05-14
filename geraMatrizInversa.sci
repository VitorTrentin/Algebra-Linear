//creates inverted matrix
function[inversa]=geraMatrizInversa(matriz)
    [m,n] = size(matriz)
    identidade = geraIdentidade(m,n)
    Aum=[matriz,identidade]
    invertida=goussjordan(Aum)
    inversa=invertida(:,n+1:2*n)
endfunction
