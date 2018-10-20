%% Lab4 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
fid = fopen('result.txt','w');
x = 1;

X1 = x*cos(pi/3);
S = X1;
Sn = 0;

Xn = X1;
n = 1;
fprintf(fid,'  N\t  X\t\t  S\n');
fprintf(fid,'%d\t%8.6f\t%8.6f\n',n, X1, S);
while(S - Sn > 0.00001)
    n = n + 1;
    Xn = Xn * n * X1/(n+1);
    Sn = S;
    S = S + Xn;
    fprintf(fid,'%d\t%8.6f\t%8.6f\n',n, Xn, S);
end

fclose(fid);
%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('x = %5.2f\n', x)

fprintf('       Answer:\n')
fprintf('S = %10.6f\n', S)
%-----------
%% Task 2
%-----Input
fid = fopen('result.txt','a');
x = 1;

X1 = 1;
S = X1;
Sn = 0;

Xn = X1;
n = 0;
fprintf(fid,'  N\t  X\t\t  S\n');
fprintf(fid,'%d\t%8.6f\t%8.6f\n',n, X1, S);
while(S - Sn > 0.00001 || Sn - S > 0.00001)
    n = n + 1;
    Xn = Xn * (-1)*(factorial(2*n)/factorial(2*(n+1)))^2 * (x/2)^4;
    Sn = S;
    S = S + Xn;
    fprintf(fid,'%d\t%10.9f\t%10.9f\n',n, Xn, S);
end

fclose(fid);
%-----Output
fprintf('\n\nTASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('x = %5.2f\n', x)
fprintf('       Answer:\n')
fprintf('S = %10.6f\n', S)
%-----------