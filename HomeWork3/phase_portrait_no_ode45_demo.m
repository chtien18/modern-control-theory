close all; clear all;

delt=0.001;

%initial condition
x1p = 1e-5*cos(pi/5);
x2p = 1e-5*sin(pi/5);

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
figure();
plot(x1Arr,x2Arr);
figure();
plot(tArr,x1Arr,tArr,x2Arr);


