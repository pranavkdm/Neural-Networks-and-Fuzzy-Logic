clc;
clear all;
pattern = input('Enter Training patterns: ');
wt = input('Enter weights: ');
alpha = input('Enter Learning Rate: ');
epoch = 1000;
for e=1:epoch
    for i = 1:4
        dist1 = (pattern(i,:)-wt(1,:)).^2;
        dist1=sum(dist1);
        dist2 = (pattern(i,:)-wt(2,:)).^2;
        dist2=sum(dist2);
        if(dist1<dist2)
            wt(1,:)=wt(1,:)+alpha*(pattern(i,:)-wt(1,:));
        else
            wt(2,:)=wt(2,:)+alpha*(pattern(i,:)-wt(2,:));
        end
    end
    alpha = alpha/2;
end
wt