close all;
clear all;
alpha=1;
beta=1;
lambda=0.5;
k=200;

%initial condition
x1p=0.01;
x2p=0.01;

z1p=x1p;
z2p=x2p;

delt =0.001;
final_time=200;
tArr=[0:delt:final_time];
total_step=length(tArr);

x1Arr=zeros(1,total_step);
x2Arr=zeros(1,total_step);
z1Arr=zeros(1,total_step);
z2Arr=zeros(1,total_step);
sArr=zeros(1,total_step);

x1Arr(1)=x1p;
x2Arr(1)=x2p;
z1Arr(1)=z1p;
z2Arr(1)=z2p;


for i=(1:total_step -1)
    axx= beta * x1p *x2p + alpha*(x1p^3) + 3*alpha*(x1p^2)*(x2p + alpha*(x1p^3));
   % u=-axx-4.25*z1p-z2p; %Feedback linearization
    s=z2p+lambda*z1p;
    u=-axx-lambda*z2p-k*sign(s);
    d=0;
    x1_dot = x2p + alpha*(x1p^3);
    x2_dot = beta*x1p*x2p + alpha*x1p^3 + u;
    
    z1_dot = z2p;
    z2_dot = -4.25*z1p-z2p;
    
    x1_curr = x1p + x1_dot*delt;%current
    x2_curr = x2p + x2_dot*delt;
    
    z1_curr = z1p + z1_dot*delt;%current
    z2_curr = z2p + z2_dot*delt;
    
    
    x1Arr(i+1) = x1_curr;
    x2Arr(i+1) = x2_curr;
    
    z1Arr(i+1) = z1_curr;
    z2Arr(i+1) = z2_curr;
    sArr(i+1) = s;
    x1p = x1_curr;
    x2p = x2_curr;
    
    z1p = z1_curr;
    z2p = z2_curr;
end

figure();
plot(x1Arr,x2Arr);

figure();
plot(tArr,z1Arr,tArr,z2Arr);

figure();
plot(tArr,x1Arr,tArr,x2Arr);