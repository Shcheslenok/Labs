%% Lab6 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
x = -1:0.01:5;
x1 = x(x <=0);
x2 = x(x > 0);
y1 = abs(x1).*exp(-2*x1)./(1+x1.^2);
y2 = sqrt(1 + x2.^2);

y = [y1 , y2];
grid on;
xlabel('X');
ylabel('Y');
legend('Z', 'Y');
title('Graphic_123','interpreter', 'none');
plot(x,y);

%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('x = %5.2f\n', x)

fprintf('       Answer:\n')
fprintf('y1 = %10.6f\t', y1)
fprintf('\n')
fprintf('y2 = %10.6f\t', y2)
%-----------

%% Task 2
%-----Input
x = -1:0.01:5;
x1 = x(x <=0);
x2 = x(x > 0);
z1 = (1+x1)./(1+sqrt(abs(x1).*exp(-x1)));
z2 = cos(3 * x2);

z = [z1 , z2];
hold on;
plot(x,z,'r:+');
grid on;
%-----Output
fprintf('TASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')

fprintf('       Answer:\n')
fprintf('z1 = %10.6f\t', z1)
fprintf('\n')
fprintf('z2 = %10.6f\t', z2)
%-----------