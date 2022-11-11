function out = L_eps_norm(u, eps)
%L_EPS_NORM Summary of this function goes here
%   Detailed explanation goes here
case1 = u(abs(u) <= eps);
case2 = u(abs(u) > eps);
s1 = 1/2 * ((case1)'*case1);
s2 = sum(eps*(abs(case2) - eps/2));
out = s1+s2;
end

