function dx = func1_control(t,x)
dx = zeros(2,1);  

dz=zeros(2,1);
v=-6*z(1)-5*z(2);

dz(1)=z(2);
dz(2)= v;

a=1;
u=(v+a*x(1)*x(1)*cos(x(2)))/(a*cos(x(2)));

dx(1) = a*sin(x(2));
dx(2) = - x(1)*x(1)+u;

