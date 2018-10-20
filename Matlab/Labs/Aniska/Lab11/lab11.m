%% Lab11 var 2
% Aniska Yauhenya
%% Task 1
clear;
clc;
%-----Input
X = betarnd(0.7, 0.7,1,5000);
m = mean(X);
s = std(X);

[N, Y] = hist(X,20);
PDF = betapdf(Y,0.7, 0.7);

dy = Y(2) - Y(1);
N = N/sum(N.*dy);

figure(1);
clf;
bar(Y, N, 'g');
hold on;
plot(Y, PDF)

legend('gist', 'betapdf');
xlabel('x beta');
ylabel('y beta');
title('var2');
text(0.5,1.6,'TEXT');
hold off;
%-----Output

%-----------
