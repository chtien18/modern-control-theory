clc
clear all
t=30;
x=zeros(1,t);
y=zeros(1,t);

for a= [0.2:0.2:2]*pi
    for b = [0.2:0.2:2]*pi
        x(1)=a;
        x(1)=b;
        
        for n=2:t 
            x(n)= -4*x(n-1) + 5* y(n-1);
            y(n)= -5*x(n-1) + 4*y(n-1);
        end
        plot(x,y)
        hold on
        
    end
end