clc;
clear all;

x=0:0.01:10;
y1=trapmf(x,[0 1 4 7]);
y1=0.25*y1;
y2=trapmf(x,[3 5 6 7]);
y2=0.7*y2;
y3=trapmf(x,[2 6 7 8]);
y3=1*y3;
figure(1)
subplot(2,2,1);
plot(x,y1,'linewidth',2);
subplot(2,2,2);
plot(x,y2,'linewidth',2);
subplot(2,2,3);
plot(x,y3,'linewidth',2);
a=max(y1,y2);
b=max(a,y3);
subplot(2,2,4);
plot(x,b,'linewidth',2);

[max1,n]=max(b);
first_max=(n-1)/100;
for i=n:(size(x,2)+1)
    if(b(i)~=max1)
        last_max=(i-2)/100;
        break;
    end
end
first_max
last_max
mean_max=(first_max+last_max)/2

sum1=sum(b);
N=0;
for i=0:size(x,2)-1
    N=N+(b(i+1)*(i*0.01));
end
centroid=N/sum1

[maxy1,n1]=max(y1);
first_max1=(n1-1)/100;
for i=n1:(size(x,2)+1)
    if(y1(i)~=maxy1)
        last_max1=(i-1)/100;
        break;
    end
end
mean_max1=(first_max1+last_max1)/2;

[maxy2,n2]=max(y2);
first_max2=(n2-1)/100;
for i=n2:(size(x,2)+1)
    if(y2(i)~=maxy2)
        last_max2=(i-1)/100;
        break;
    end
end
mean_max2=(first_max2+last_max2)/2;

[maxy3,n3]=max(y3);
first_max3=(n3-1)/100;
for i=n3:(size(x,2)+1)
    if(y3(i)~=maxy3)
        last_max3=(i-1)/100;
        break;
    end
end
mean_max3=(first_max3+last_max3)/2;
num=mean_max1*max(y1)+mean_max2*max(y2)+mean_max3*max(y3);
den=max(y1)+max(y2)+max(y3);
wt_avg=num/den

figure(2)
plot(x,b,'linewidth',2);
line([first_max first_max],[0 1],'color','red','linestyle','--','linewidth',2);
line([last_max last_max],[0 1],'color','green','linestyle','--','linewidth',2);
line([mean_max mean_max],[0 1],'color','yellow','linestyle','--','linewidth',2);
line([centroid centroid],[0 1],'color','cyan','linestyle','--','linewidth',2);
line([wt_avg wt_avg],[0 1],'color','magenta','linestyle','--','linewidth',2);
legend('Membership Function Plot','First of Max','Last of Max','Mean of Max','Centroid','Weighted Average');