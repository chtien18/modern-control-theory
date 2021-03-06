function dx = funVanderPol(t,x)

dx = zeros(2,1);   

mu = 1;

dx(1) = x(2);
dx(2) = - x(1) + mu * ( 1 - x(1)^2 ) * x(2); 