function out = additional_bounds(u,N,a,d,xbar,umax,gamma, delta)
A = genA(d, a, N);
b = genb(xbar, a, N);
x = A*u-b;
out = norm(x)^2 + (gamma/2)*norm(u)^2 - delta*sum(log(umax-u));
end

