function out = L_eps_norm_gradient(u, eps)
%GRAD_L_EPS_NORM Summary of this function goes here
%   Detailed explanation goes here
out = u;
mask = logical(abs(out)>eps);
out(mask) = eps*sign(out(mask));

end

