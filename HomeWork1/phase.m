clc
clear all
close all
figure()
hold on 
for a=[0.2:0.2:2]*pi
    for b=[0.2:0.2:2]*pi
        x0=[cos(a);sin(b)];
        [t,x]=ode45(@dxdt1,[0 5],x0);
        plot(x(:,1),x(:,2))
    end
end

