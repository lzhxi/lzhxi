h = 200;
qufushendu = 25;
loss = 10*log10(exp(-1/qufushendu*h)/h);

dx = 200;
distance = dx:dx:10000;
h = 300;
angle = atan(distance/h);
E = 1./distance.*cos(angle);
E = 10*log10(E)+rand(1,length(distance))*0.5+loss;
plot(distance/1000,E);