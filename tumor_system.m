function dXdt = tumor_system(t, X, alpha, beta, gamma, delta)

x = X(1);
y = X(2);
z = X(3);

dxdt = -x + (y*z)/(1 + z);
dydt = alpha*x - beta*y + gamma;
dzdt = delta*z - z*y;

dXdt = [dxdt; dydt; dzdt];

end

