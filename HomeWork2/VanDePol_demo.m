%Van de pol analysis from the video
clear 
mu = -0.1
[x1,x2] = meshgrid(-4:0.25:4,-4:0.25:4);

%plot some arrows in the direction of derivatives
dx1=x2;
dx2= -mu*(x1.^2 - 1).*x2 - x1;%
r = sqrt(dx1.^2 + dx2.^2); % calculate the magnitude of derivative 
quiver(x1,x2,dx1./r,dx2./r,0.5,'LineWidth',1);
hold on
axis equal;
set(gca,'FontSize',20);
axis([-4 4 -4 4]);

while (true)
    x0 = ginput(1); % get initial condition with a mouse click
    tspan = [0 30];
    [t,x] = ode45(@(t,x) odefcn(x,mu),tspan,x0); %solve the diff. eq. sys.
    plot(x(:,1),x(:,2),'LineWidth',3);
end

function dxdt = odefcn(x, mu)
dxdt = zeros(2,1);
dxdt(1) = x(2);
dxdt(2) = -mu*(x(1)^2 - 1)*x(2) - x(1);
end