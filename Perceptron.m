clc;
clear all;
w1=0;
w2=0;
b=0;
wt=[w1 w2 b];
ip=input('Enter inputs: ');
alpha=input('Enter Learning Rate');
flag=1;
t=[1,0,0,0];
while(flag==1)
    for i=1:4
        yin(i)=ip(i,:)*wt';
        if(yin(i)>=0)
            y(i)=1;
        else
            y(i)=0;
        end
        if(y(i)~=t(i))
            err=t(i)-y(i);
            wt=wt+err*alpha*ip(i,:);
        end
    end
    if(y==t)
        flag=0;
    end
end
wt
