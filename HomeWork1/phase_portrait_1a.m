function phase_portrait()
close all
clc 
figure()
hold on 
    for theta=[0.2:0.2:2]*pi
        x0=[cos(theta);sin(theta)];
        [t,x]=ode45(@dxdt2,[0 100],x0);
        plot(x(:,1),x(:,2)) 
        drawnow 
    end
end

function dx= dxdt2(t,x)
%A=[-4 5; -5 4];
%A=[-0.85 0.75; -0.75 0.35];
%A=[0.0485 0.0152; 0 0.1];
%A=[0.1030 -0.0303; 0.0303 -0.2030];
%A=[ 0.05 -0.45; 0.45 0.05];
A=[ -1.8 0.4; -0.4 -0.8];
dx=A*x;
end