function phase_portrait_3D()
close all
clc 
%initial x0

x0=[1 0 4; 1 0 0; 1 0 -4];
figure()
hold on 
    for i=[1:1:3]
        [t,x]=ode45(@dxdt2,[0 30],x0(i,:).');
        plot3(x(:,1),x(:,2),x(:,3)) 
        drawnow 
    end
end

function dx= dxdt2(t,x)
A=[ -0.15 1 0; -1 -0.15 0; 0 0 0];
dx=A*x;
end