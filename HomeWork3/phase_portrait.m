
close all; clear all
x1p = 1;
x2p = 1;

figure(1)
hold on 
%for theta=[0:10]*pi/5
 %   x0=1e-5*[cos(theta);sin(theta)];
    [t,x]=ode45(@dxdt_func,[0 8],[x1p x2p]);
    plot(x(:,1),x(:,2))
figure(2)
plot(t,x(:,1),t,x(:,2))
%end


delt=0.001;

%initial condition
%x1p = 1e-5*cos(pi/5);
%x2p = 1e-5*sin(pi/5);


final_step = 8;
tArr = [0:delt:final_step];
total_step = length(tArr);
x1Arr = zeros(1,total_step);
x2Arr = zeros(1,total_step);

x1Arr(1)=x1p;
x2Arr(2)=x2p;

for i = 1:total_step-1
    x1_dot = x1p + 3*x2p;
    x2_dot = -5*x1p + 2*x2p;
    
    x1_cur = x1p + x1_dot*delt;
    x2_cur = x2p + x2_dot*delt;
    
    x1Arr(i+1) = x1_cur;
    x2Arr(i+1) = x2_cur;
    
    x1p = x1_cur;
    x2p = x2_cur;
end
figure(3);
plot(x1Arr,x2Arr);

figure(4);
plot(tArr,x1Arr,tArr,x2Arr);



function dxdt = dxdt_func(t,x)

dxdt = zeros(2,1);

dxdt(1) = x(1) + 3*x(2);
dxdt(2) = -5*x(1)+2*x(2);
end