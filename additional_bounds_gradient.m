function grad = additional_bounds_gradient(u, N, a, d, xbar, umax, gamma,delta)
A = genA(d,a,N);
b = genb(xbar, a, N);
over_bit = umax-u;
grad = 2.*((A)'*A)*u  -2.*A'*b + gamma.*u + (delta./over_bit);
end

