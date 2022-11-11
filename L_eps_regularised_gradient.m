function out = L_eps_regularised_gradient(u, N, a, d, xbar, eps, gamma_2, gamma_1)
%L_REGULARISED_GRAD Summary of this function goes here
%   Detailed explanation goes here
A = genA(d, a, N);
b = genb(xbar, a, N);
out = 2*(A)'*A*u - 2*A'*b + gamma_2*u + gamma_1*L_eps_norm_gradient(u,eps);

end

