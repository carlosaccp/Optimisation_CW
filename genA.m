function [A] = genA(d, a, N)
    c = a.^(0:N-1);
    A = d.*tril(toeplitz(c));
end


