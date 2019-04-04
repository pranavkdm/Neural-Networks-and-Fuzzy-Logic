clc
clear all
 
figure(1)
x=0:0.1:100;
T1=trimf(x,[10 10 25]);
plot(x,T1);
hold on
T2=trimf(x,[15 30 45]);
plot(x,T2);
hold on
T3=trimf(x,[40 50 60]);
plot(x,T3);
hold on
T4=trimf(x,[55 70 85]);
plot(x,T4);
hold on
T5=trimf(x,[75 90 90]);
plot(x,T5);
 
figure(2)
y=0:0.01:5;
P1=trimf(y,[1 1 1.75]);
plot(y,P1);
hold on
P2=trimf(y,[1.25 2 2.75]);
plot(y,P2);
hold on
P3=trimf(y,[2 3 4]);
plot(y,P3);
hold on
P4=trimf(y,[3.25 4 4.75]);
plot(y,P4);
hold on
P5=trimf(y,[4.25 5 5]);
plot(y,P5);
 
figure(3)
z=0:0.01:5;
HP1=trimf(z,[1 1 1.5]);
plot(z,HP1);
hold on
HP2=trimf(z,[1.25 2 2.75]);
plot(z,HP2);
hold on
HP3=trimf(z,[2.5 3.125 3.75]);
plot(z,HP3);
hold on
HP4=trimf(z,[3.5 4 4.5]);
plot(z,HP4);
hold on
HP5=trimf(z,[4.25 5 5]);
plot(z,HP5);
 
T=T2(find(x==22.5,1,'first'));
P=P2(find(y==1.5,1,'first'));
HPMH=min(T,P);
HP=HP4*HPMH;
figure(4)
plot(z,HP4)
hold on
area(z,HP)
 
TL=T1(find(x==22.5,1,'first'));
PL=P1(find(y==1.5,1,'first'));
HPH=min(TL,PL);
HPL=HP5*HPH;
figure(5)
plot(z,HP5)
hold on
area(z,HPL)
 
figure(6)
area(z,HP)
hold on
area(z,HPL)
 
AreaMH=(1/2)*1*1
AreaH=2*(1/2)*0.75*1
CentreMH=4
CentreH=5
HPMH
HPH
