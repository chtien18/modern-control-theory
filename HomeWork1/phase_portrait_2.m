function phase_portrait_3D()
close all
clc 
figure()
hold on 
    
        x0=[2;3;4];
        [t,x]=ode45(@dxdt2,[0 300],x0);
        plot3(x(:,1),x(:,2),x(:,3)) 
        drawnow 
    
end

function dx= dxdt2(t,x)
A=[ 0.07 1 0; -1 -0.07 0; 0 0 -0.2];
dx=A*x;
end