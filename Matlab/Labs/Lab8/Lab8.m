%% Lab8 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
global INPUT
global OUTPUT

INPUT = 'input';
OUTPUT = 'output';

C = [-1 1 -1;
     1 2 3;
     0 -2 4;];
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
load(OUTPUT, 'C');
disp(C);
%-----------
%% Task 2
%-----Input
X = [1 -1 5 -3 0 6 -8];
save(INPUT, 'X');

Task2();

%-----Output
fprintf('TASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
load(INPUT, 'X');
disp(X);

fprintf('       Answer:\n')
load(OUTPUT, 'X');
disp(X);
%-----------