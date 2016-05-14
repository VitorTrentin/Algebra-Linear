function [hilbert] = createHilbertMatrix(size)
    for i=1:size
        for j=1:size
            hilbert(i,j) = 1/(i+j-1)
        end
    end
endfunction
