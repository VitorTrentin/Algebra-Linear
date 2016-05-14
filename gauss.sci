function [aum] = gauss(matriz, vetor)
    aum = [matriz, vetor]
    [m, n] = size(aum)
    
    a = 1
    
    for k = 1:n-1 
        for u = a:m
            if( aum(u, k) ~= 0 ) then
                aux = aum(a, :)
                aum(a, :) = aum(u, :)
                aum(u, :) = aux
                aum(a, :) = aum(a, :)/aum(a, k)
                
                for p = (a+1):m
                    aum(p,:) = aum(p,:) - aum(a,:) * aum(p,k)
                end
                
                a = a + 1
            end
        end
    end
endfunction
