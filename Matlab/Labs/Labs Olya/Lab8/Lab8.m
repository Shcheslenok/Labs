%% Lab8 var 9
% Petrukovich Volha
%% Task 1
clc;
clear;
%-----Input
global INPUT
global OUTPUT

INPUT = 'input';
OUTPUT = 'output';

C = [-1 1 1 0 -2 1 12 11 -6 -5];
save(INPUT, 'C');

Task1();

%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
load(INPUT, 'C');
disp(C);
fprintf('\n')

fprintf('       Answer:\n')
load(OUTPUT, 'minx');
disp(minx);
%-----------
%% Task 2
%-----Input
C = [-1 1 1 0 -2 1 12 11 -6 -5];
save(INPUT, 'C');

Task2();

%-----Output
fprintf('TASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
load(INPUT, 'C');
disp(C);

fprintf('       Answer:\n')
load(OUTPUT, 'X','minx');
disp(X);
disp(minx);
%-----------