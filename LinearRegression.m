clc;
clear all;
x = 0:0.01:0.99;
t = 40*x+10+rand(1,100);
w=0;
b=0;
epoch=60;
r=0.25;
for i=1:epoch
    mse=0;
    for j=1:100
        y(j)=w*x(j)+b;
        err=t(j)-y(j);
        w=w+err*x(j)*r;
        b=b+err*r;
        mse=mse+err^2;
    end
    mse=mse/100;
    mserror(i)=mse;
end
disp('Mean Square Error is:');
disp(mse);
figure(1)
scatter(x,t);
refline(w,b);
xlabel('x');
ylabel('t');
title('Linear Regression');
figure(2)
plot(1:epoch,mserror);
xlabel('No. of Iterations');
ylabel('Mean Square Error');