%% Lab9 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
x = -15:0.1:10;

z1 = num2str(fzero(@f1, [-4 -3]));
z2 = num2str(fzero(@f1, [4 5]));
z3 = num2str(fzero(@f3, [-2 -1]));
z4 = num2str(fzero(@f3, [2 3]));

str = strcat('f1:z1 = ', z1, 'z2 = ', z2);
figure('Name', str)
plot(x, f1(x));
grid on;


figure('Name', 'f2')
plot(x, f2(x));
grid on;

str = strcat('f3:z1 = ', z3, 'z2 = ', z4);
figure('Name', str)
plot(x, f3(x));
grid on;

%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
disp(x);
disp(f1(x));
disp(f2(x));
disp(f3(x));

fprintf('\n')

fprintf('       Answer:\n')

%-----------