function [aum] = gaussJordan(matriz, vetor)
    aum = gauss(matriz, vetor)
    [m, n] = size(aum)
    
    for u = m:-1:1
        for k = 1:n-1
            if ( aum(u, k) ~= 0 ) then
                for v = u-1:-1:1
                    aum(v, :) = aum(v, :) - aum(u, :) * aum(v, k) 
                end
                break
            end
        end
    end    
endfunction
