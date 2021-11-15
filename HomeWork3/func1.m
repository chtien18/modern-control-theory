function dx = func1(t,x)
dx = zeros(2,1);   

a=1;
u=0;


dx(1) = a*sin(x(2));
dx(2) = - x(1)*x(1)+u;