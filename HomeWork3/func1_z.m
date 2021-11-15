function dz=func1_z(t,z)

dz=zeros(2,1);
v=-6*z(1)-5*z(2);

dz(1)=z(2);
dz(2)= v