clc;
clear all;
ip = input('Enter input values: ');
ch = input('Enter choice of operation - 1. AND 2. NAND 3. OR. 4. NOR: ');
wt = [1,1];
switch ch
    case 1
        b = 2;
        for i = 1:4
            yin(i) = ip(i,:)*wt' - b;
            if(yin(i)>=0)
                yout(i) = 1;
            else
                yout(i) = 0;
            end
        end
    case 2
        b = 2;
        for i = 1:4
            yin(i) = ip(i,:)*wt' - b;
            if(yin(i)>=0)
                yout(i) = 0;
            else
                yout(i) = 1;
            end
        end
    case 3
        b = 1;
        for i = 1:4
            yin(i) = ip(i,:)*wt' - b;
            if(yin(i)>=0)
                yout(i) = 1;
            else
                yout(i) = 0;
            end
        end
    case 4
        b = 1;
        for i = 1:4
            yin(i) = ip(i,:)*wt' - b;
            if(yin(i)>=0)
                yout(i) = 0;
            else
                yout(i) = 1;
            end
        end
end
yout
        
        
