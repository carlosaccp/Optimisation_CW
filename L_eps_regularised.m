function out = L_eps_regularised(u,N,a,d,xbar,eps,gamma_2,gamma_1)
%L_REGULARISED Summary of this function goes here
%   Detailed explanation goes here
A = genA(d,a,N);
b = genb(xbar,a,N);
x = get_x(A,u,b);
out = norm(x)^2 + (gamma_2/2)*norm(u)^2 + gamma_1*L_eps_norm(u, eps);
end

