function x = constant_descent(t, x0, grad_f, eps)
%CONSTANT_DESCENT Summary of this function goes here
%   Detailed explanation goes here
x=x0;
grad = grad_f(x0);
G = norm(grad,2);
while G>eps
    x = x - t*grad;
    grad = grad_f(x);
    G = norm(grad,2);
end
end

