%% Lab7 var 9
% Petrukovich Volha
%% Task 1
clc;
clear;
%-----Input
[x, y] = meshgrid(-2*pi:0.1*pi:2*pi);
z = abs(cos(y))*(sin(x)./x);

figure('Name', 'plot3')
plot3(x,y,z);

figure('Name', 'mesh')
mesh(x,y,z);

figure('Name', 'surf')
surf(x,y,z);

figure('Name', 'surfl')
surfl(x,y,z);

figure('Name', 'waterfall')
waterfall(x,y,z);

figure('Name', 'contour')
contour(x,y,z);

figure('Name', 'contour3')
contour3(x,y,z);
%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('x = %5.2f\t', x)
fprintf('\n')
fprintf('y = %5.2f\t', y)
fprintf('\n')

fprintf('       Answer:\n')
disp(z);
%-----------