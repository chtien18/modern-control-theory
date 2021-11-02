 function xdot = exmplode(t,x)
 % EXMPLODE Evaluation of ODE Derivative
 % For Second order ODE
 % x'' + bx' + cx = f(t)
 % b=c=2
 % f(t)= u(t-2)
 xdot = [0 1;-2 -2]*x + [0;1]*(t>=2);
 % end of exmplode.m
