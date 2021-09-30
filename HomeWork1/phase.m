figure(1)
hold on 
for theta=[0.2:0.2:2]*pi
    x0=1e-1*[cos(theta);sin(theta)];
    [t,x]=ode45(@dxdt1,[0 5],x0);
    plot(x(:,1),x(:,2))
end