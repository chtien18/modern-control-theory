function dx = FuncApplyLyapunov3(t,x)
mu=-1;

dx=zeros(2,1);
dx(1) = x(2) + mu*x(1)*(4*x(1).^2 + x(2).^2 -4);
dx(2) = -4*x(1) + mu*x(2)*(4*x(1).^2 + x(2).^2 -4);
