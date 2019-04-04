clc;
clear all;
v1=[0.6,-0.1,0.3];
v2=[-0.3,0.4,0.5];
w=[0.4,0.1,-0.2];
t=[0,1,1,0];
alpha=0.25;
x=input('Enter input values: ');
mse=1;
while(mse>0.0005)
    for i=1:4
        zin1=x(i,:)*v1(1:2)'+v1(3);
        zin2=x(i,:)*v2(1:2)'+v2(3);
        z1=1./(1+exp(-zin1));
        z2=1./(1+exp(-zin2));
        yin=z1*w(1)+z2*w(2)+w(3);
        y=1./(1+exp(-yin));
        
        d0=(t(i)-y)*y*(1-y);
        dt_w1=d0*z1*alpha;
        dt_w2=d0*z2*alpha;
        dt_w0=d0*alpha;
        dt_w=[dt_w1 dt_w2 dt_w0];
        
        din1=d0*w(1);
        din2=d0*w(2);
        d1=din1*z1*(1-z1);
        d2=din2*z2*(1-z2);
        dt_v11=d1*alpha*x(i,1);
        dt_v21=d1*alpha*x(i,2);
        dt_v01=d1*alpha;
        dt_v12=d2*alpha*x(i,1);
        dt_v22=d2*alpha*x(i,2);
        dt_v02=d2*alpha;
        dt_v1=[dt_v11 dt_v12 dt_v01];
        dt_v2=[dt_v21 dt_v22 dt_v02];
        
        w=w+dt_w;
        v1=v1+dt_v1;
        v2=v2+dt_v2;
        
        mse=(t(i)-y).^2;
    end
end
v1
v2
w
for j = 1:4
    zin=[x(j,:)*v1(1:2)'+v1(3),x(j,:)*v2(1:2)'+v2(3)];
    z=1./(1+exp(-zin));
    yin=z*w(1:2)'+w(3);
    y(j)=1./(1+exp(-yin));
end
y