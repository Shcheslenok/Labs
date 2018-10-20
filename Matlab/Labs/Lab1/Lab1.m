%% Lab1 var 11
% Shcheslenok Peter
%% Task 1
clear;
clc;
%-----Input
a =-1.4;
b = 25.3;
x = 4.5;
n = 4;
%-----Output
y = 1.1*nthroot((a+b)^2 + abs(cos(n*x)),3)/sin(a+b)-exp(2)+10^-3*n^2*x/(a+b)
%-----------

%% Task 2
%-----Input
a =2.75;
b = 1.3;
x = -7.85;
d=1.23;
k = -2;
%-----Output
z = 10^4*sqrt(a^2 + b^2)/(a^2 + x^2) - 1.7*sqrt(7)*(a^2 + b^2)/((a+b)*k*d) -cos(2)/abs(x+d+k)
%-----------