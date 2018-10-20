%% Lab9 var 9
% Petrukovich Volha
%% Task 1
clc;
clear;
%-----Input
x = -10:0.01:10;

z1 = num2str(fzero(@f1, [-3 -2]));
z2 = num2str(fzero(@f1, [2 3]));
z3 = num2str(fzero(@f3, [-3 -2]));
z4 = num2str(fzero(@f3, [2 3]));

str = strcat('f1:z1 = ', z1, '  z2 = ', z2);
figure('Name', 'f1')
plot(x, f1(x));
title(str);
grid on;


figure('Name', 'f2')
title('f2');
plot(x, f2(x));
grid on;

str = strcat('f3:z1 = ', z3, '  z2 = ', z4);

figure('Name', 'f3')
plot(x, f3(x));
title(str);
grid on;

%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')


fprintf('\n')

fprintf('       Answer:\n')

%-----------