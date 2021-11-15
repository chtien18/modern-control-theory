close all; clear all

%xinit = [ [(0:0.5:3) (0:0.5:3) -(0:0.5:3) -(0:0.5:3)]'  [(0:0.5:3) -(0:0.5:3) (0:0.5:3) -(0:0.5:3)]' ];
xinit = [ [1 1];[0.5 1]; [-0.5 0.5]];% 14 initial points
figure(1)

  plot( xinit(:,1), xinit(:,2), 'rx' ); 
  hold on
        
for i = 1:3
  %[ t, x ] = ode45( @func1_z, [ 0 50 ], xinit(i,:));
  [ t, x ] = ode45( @func1_control, [ 0 50 ], xinit(i,:));
  figure(1)
  plot( x(:,1), x(:,2), '-' );
  drawnow
  
  figure(2)
  plot(t,x(:,1),'r-o',t,x(:,2),'b-*')
end