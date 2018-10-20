function r = subfun1(C)
%SUBFUN1 Summary of this function goes here
%   Detailed explanation goes here
[m n] = size(C);
r = sum(sum(C))/(m*n);
end

