function phase_portrait()
close all
clc 
figure()
hold on 
    for theta=[0.2:0.2:2]*pi
        x0=[cos(theta);sin(theta)];
        [t,x]=ode45(@dxdt2,[0 25],x0);
        plot(x(:,1),x(:,2)) 
        drawnow 
    end
end

function dx= dxdt2(t,x)
A=[-0.85 0.75; -0.75 0.35];
dx=A*x;
end