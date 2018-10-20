function Task1()
%TASK1 Summary of this function goes here
%   Detailed explanation goes here
global INPUT;
global OUTPUT;
load(INPUT, 'C');

minx = subfun1(C);

save(OUTPUT, 'minx');
end