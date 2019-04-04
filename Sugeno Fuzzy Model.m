clc;
clear all;
 
t=0:0.01:100;
 
x_small=gbellmf(t,[50 4 0]); %Small MF X
x_large=gbellmf(t,[50 4 100]); %Large MF X
figure(1)
plot(t,x_small,'--',t,x_large);
xlabel('X->');
ylabel('Membership Grade:');
title('Membership function for X');
 
y_small=gbellmf(t,[50 4 0]);  %Small MF Y
y_large=gbellmf(t,[50 4 100]); %Large MF Y
figure(2)
plot(t,y_small,'.',t,y_large);
xlabel('Y->');
ylabel('Membership Grade:');
title('Membership function for Y');
 
%Rule Base
x=input('Enter value for x: ');
y=input('Enter value for y: ');
z1=-x+y+1
z2=-y+3
z3=-x+3
z4=x+y+2
 
alpha1=min(x_small(x*100+1),y_small(y*100+1))
alpha2=min(x_small(x*100+1),y_large(y*100+1))
alpha3=min(x_large(x*100+1),y_small(y*100+1))
alpha4=min(x_large(x*100+1),y_large(y*100+1))
 
z0=(z1*alpha1+z2*alpha2+z3*alpha3+z4*alpha4)/(z1+z2+z3+z4)
