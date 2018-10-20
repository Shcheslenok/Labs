function Task2()
%TASK2 Summary of this function goes here
%   Detailed explanation goes here
global INPUT;
global OUTPUT;
load(INPUT, 'C');

[minx,X] = subfun2(C);
% s = length(C);
% X = C(min+1:1:s);
% 
% X = X(X > 0);

save(OUTPUT, 'X', 'minx');
end

