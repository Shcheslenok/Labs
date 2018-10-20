%% Lab11 var 11
% Shcheslenok Peter
%% Task 1
clear;
clc;
%-----Input
X = poissrnd(9,1,5000);
m = mean(X);
s = std(X);

[N, Y] = hist(X,20);
PDF = poisspdf(round(Y),9);
k = PDF/N;
N = N*k;
figure(1);
clf;
bar(Y, N, 'g');
hold on;
plot(Y, PDF);

legend('gist', 'poisspdf');
xlabel('x poiss');
ylabel('y poiss');
title('var11');
text(20,0.1,'TEXT');
hold off;
%-----Output

%-----------
