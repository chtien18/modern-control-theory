% phuong trinh vi phan theta_dot_dot + c*theta_dot + k*sin(theta)  = 0

function dx = pendulum(t,x)
global c k

dx= zeros(2,1);
dx(1)=x(2);
dx(2)=-c*x(2)-k*sin(x(1));