function Task1()
%TASK1 Summary of this function goes here
%   Detailed explanation goes here
global INPUT;
global OUTPUT;
load(INPUT, 'C');
mid = subfun1(C);

k = find(C < 0);
C(k) = mid;

save(OUTPUT, 'C');
end