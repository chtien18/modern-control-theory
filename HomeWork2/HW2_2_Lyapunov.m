
close all; clear all
%Lyapunov function

%xinit = [ [(0:0.5:3) (0:0.5:3) -(0:0.5:3) -(0:0.5:3)]'  [(0:0.5:3) -(0:0.5:3) (0:0.5:3) -(0:0.5:3)]' ];
xinit = [ [1.3 1.3; 1.3 1.3] ];% 14 initial points
figure(1)

plot( xinit(:,1), xinit(:,2), 'rx' ); 
hold on
    
for i = 1:2
  [ t, x ] = ode45( @FuncApplyLyapunov, [ 0 100 ], xinit(i,:));
  figure(1)
  plot( x(:,1), x(:,2), '-' );
  drawnow
end

figure(2)
x1=[-4:0.01:4];
x2=x1;
[X1,X2]=meshgrid(x1,x2);
v=X1.^2 + X2.^2;
mesh(X1,X2,v);

hold on
[ t, x ] = ode45( @FuncApplyLyapunov, [ 0 20 ], [1.3 1.3]);
x1=x(:,1);
x2=x(:,2);
Vi=x1.^2 + x2.^2;
plot3( x(:,1), x(:,2),Vi,'r-' );

epsilon=1/9;
%epsilon=-0.001;
figure()
vdot=-X1.^2 - X2.^2 + epsilon*(X1.^2 + X2.^2)*(X1.^2 + X2.^2-1)*(X1.^2 + X2.^2-1);
mesh(X1,X2,vdot)

