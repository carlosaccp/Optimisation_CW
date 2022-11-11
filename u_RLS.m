function u = u_RLS(d, a, xbar, gamma, N)
    A = genA(d, a, N);
    b = genb(xbar, a, N);
    u = inv(A'*A + (gamma/2).*eye(N,N))*A'*b;
end

