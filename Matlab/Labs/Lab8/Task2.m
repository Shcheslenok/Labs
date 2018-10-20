function Task2()
%TASK2 Summary of this function goes here
%   Detailed explanation goes here
global INPUT;
global OUTPUT;
load(INPUT, 'X');

[maxx minx] = subfun2(X);
k = find(X > 0);
X(k) = X(k) * minx;

k = find(X < 0);
X(k) = X(k) * maxx;

save(OUTPUT, 'X');
end

