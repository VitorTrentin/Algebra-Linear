function[identidade]=geraIdentidade(m,n)
    for (i=1:m)
        for (j=1:n)
            if(i==j)  then
                identidade(i,j)=1
            else
                identidade(i,j)=0
            end
        end
    end
endfunction
