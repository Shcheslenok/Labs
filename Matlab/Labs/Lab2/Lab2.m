%% Lab2 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
R = 1;
H = 2;
V = (4*pi*R^3)/3;
S = 4*pi*R^2;
Vc = pi*H^2*(R - H/3);

%-----Output
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('R = %5.2f\n', R)
fprintf('H = %5.2f\n\n\n', H)
fprintf('       Answer:\n')
fprintf('V = %5.2f, S = %5.2f, Vc = %5.2f\n', V, S, Vc)
%-----------