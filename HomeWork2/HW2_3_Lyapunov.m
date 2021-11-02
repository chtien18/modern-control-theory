
close all; clear all
%Lyapunov function

xinit = [ [(0:0.5:3) (0:0.5:3) -(0:0.5:3) -(0:0.5:3)]'  [(0:0.5:3) -(0:0.5:3) (0:0.5:3) -(0:0.5:3)]' ];
%xinit = [ [0.1 0.2; 4 4] ];% 14 initial points
figure(1)

plot( xinit(:,1), xinit(:,2), 'rx' ); 
hold on
    
for i = 1:28
  [ t, x ] = ode45( @FuncApplyLyapunov3, [ 0 20 ], xinit(i,:));
  figure(1)
  plot( x(:,1), x(:,2), '-' );
  drawnow
end

figure(2)
x1=[-4:0.04:4];
x2=x1;
[X1,X2]=meshgrid(x1,x2);
v=X1.^2 + X2.^2-4;
mesh(X1,X2,v);

hold on
[ t, x ] = ode45( @FuncApplyLyapunov3, [ 0 20 ], [3 0]);
x1=x(:,1);
x2=x(:,2);
Vi=x1.^2 + x2.^2;
plot3( x(:,1), x(:,2),Vi,'r-' );

mu=-1;
figure()
vdot=4*(4*mu*X1.^2 + mu*X2.^2)*(4*X1.^2 + X2.^2-4)*(4*X1.^2 + X2.^2-4);
mesh(X1,X2,vdot)

