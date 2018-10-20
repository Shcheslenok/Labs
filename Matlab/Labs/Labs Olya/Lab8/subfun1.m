function r = subfun1(C)
%SUBFUN1 Summary of this function goes here
%   Detailed explanation goes here
m = length(C);
index = 1;
count = 0;
second = 0;

while(index < m)
    if(count == 2)
        break
    end
    if C(index)> 0
        count = count +1;
        second = index;
    end
    index = index + 1;
end
C = C(second:1:m);
r = min(C);
end

