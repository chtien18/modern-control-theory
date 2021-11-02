
close all; clear all

%xinit = [ [(0:0.5:3) (0:0.5:3) -(0:0.5:3) -(0:0.5:3)]'  [(0:0.5:3) -(0:0.5:3) (0:0.5:3) -(0:0.5:3)]' ];
xinit = [ [0.1 0.2; 4 4] ];% 14 initial points
figure(1)

  plot( xinit(:,1), xinit(:,2), 'rx' ); 
  hold on
        
for i = 1:2
  [ t, x ] = ode45( @funVanderPol, [ 0 50 ], xinit(i,:));
  %[ t, x ] = ode45( @ApplyLyapunov, [ 0 20 ], xinit(i,:));
  figure(1)
  plot( x(:,1), x(:,2), '-' );
  drawnow
  
  figure(2)
  plot(t,x(:,1),'r-o',t,x(:,2),'b-*')
end