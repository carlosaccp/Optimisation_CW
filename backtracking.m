function [x, fun_val] = backtracking(f,g,x0,s,alpha,beta,epsilon)
x = x0;
grad = g(x);
fun_val = f(x);
while (norm(grad)>epsilon)
    t=s;
    while(fun_val - f(x-t*grad)<alpha*t*norm(grad)^2)
        t=beta*t;
    end
    x = x-t*grad;
    fun_val = f(x);
    grad = g(x);
end
end