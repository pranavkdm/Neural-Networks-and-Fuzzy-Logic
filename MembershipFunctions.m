clc;
clear all;
x=1:100;
a=20;
b=4;
c=50;
d=90;
sigma=5;
triangle=max(min((x-a)/(b-a),(c-x)/(c-b)),0);
trap=max(min(min((x-a)/(b-a),1),(d-x)/(d-c)),0);
gauss=exp(-((x-c)/sigma).^2*0.5);
bell=1./((1+abs((x-c)/a)).^(2*b));
figure(1)
plot(x,bell);
