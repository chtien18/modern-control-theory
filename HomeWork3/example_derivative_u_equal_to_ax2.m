close all;
clear all;

%initial condition
x1p=0.5;
x2p=0.5;
z1p=x1p;
z2p=x2p;
a=0;

delt =0.001;
final_time=20;
tArr=[0:delt:final_time];
total_step=length(tArr);

x1Arr=zeros(1,total_step);
x2Arr=zeros(1,total_step);
z1Arr=zeros(1,total_step);
z2Arr=zeros(1,total_step);

x1Arr(1)=x1p;
x2Arr(1)=x2p;
z1Arr(1)=x1Arr(1);
z2Arr(1)=x2Arr(1);

for i=(1:total_step -1)

    %% slide controll law
    %if (x1p>0.1)
    %    u=0;
    %else 
    %    u=-a*x2p;
    %end
    
    %% State feedback linearization controll law
    %u = x1p -4.25*z1p - z2p;
    u = x1p -2*z1p - 2*z2p;
    d=0;
    %d=001*x2p; %disturbance
    
    %%
    x1_dot = x2p;
    x2_dot = -x1p + u + d;
    z1_dot = z2p;
    %z2_dot = -4.25*z1p-z2p;
    z2_dot = -x1p +u;
    
    x1_curr = x1p + x1_dot*delt;%current
    x2_curr = x2p + x2_dot*delt;
    z1_curr = z1p + z1_dot*delt;
    z2_curr = z2p + z2_dot*delt;
    
    x1Arr(i+1) = x1_curr;
    x2Arr(i+1) = x2_curr;
    z1Arr(i+1) = z1_curr;
    z2Arr(i+1) = z2_curr;
    
    x1p = x1_curr;
    x2p = x2_curr;
    z1p = z1_curr;
    z2p = z2_curr;  
    
end

figure();
plot(x1Arr,x2Arr);

figure();
plot(tArr,x1Arr,tArr,x2Arr);