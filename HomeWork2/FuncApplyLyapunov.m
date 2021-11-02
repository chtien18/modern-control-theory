function dx = FuncApplyLyapunov(t,x)
dx = zeros(2,1);   

epsilon = 1/9;
%epsilon = -0.001;

dx(1) = -x(1) + x(2) + epsilon*x(1)*(x(1)*x(1) + x(2)*x(2) - 1)^2;
dx(2) = - x(1) - x(2) + epsilon*x(1)*(x(1)*x(1) + x(2)*x(2) - 1)^2;