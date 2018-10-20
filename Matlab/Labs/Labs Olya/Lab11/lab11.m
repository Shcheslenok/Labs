%% Lab11 var 9
% Petrukovich Volha
%% Task 1
clear;
clc;
%-----Input
X = binornd(400, 0.02, 1, 5000);
m = num2str(mean(X));
s = num2str(std(X));
str = {m, s};

[N, Y] = hist(X,20);
PDF = binopdf(round(Y),400, 0.02);

dy = Y(2) - Y(1);
N = N/sum(N.*dy);

figure(1);
clf;
bar(Y, N, 'g');
hold on;
plot(Y, PDF);

legend('gist', 'binopdf');
xlabel('x bino');
ylabel('y bino');
title('var9');

text(15,0.1,str,'EdgeColor', 'k');
hold off;
%-----Output

%-----------
