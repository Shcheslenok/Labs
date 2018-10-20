%% Lab3 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
a = 1;
b = 3;
c = -4;

D = b^2 - 4*a*c;
if D > 0 
    x1 = (-1*b - sqrt(D))/(2*a);
    x2 = (-1*b + sqrt(D))/(2*a);
elseif D == 0
    x = -1*b/(2*a);
end
    
%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('a = %5.2f\n', a)
fprintf('b = %5.2f\n', b)
fprintf('c = %5.2f\n\n\n', c)
fprintf('       Answer:\n')
if D > 0 
    fprintf('x1 = %5.2f, x2 = %5.2f\n', x1, x2)
elseif D == 0
    fprintf('x = %5.2f\n', x)
else
    fprintf('Уравнение не имеет действительных корней!\n')
end
%-----------

%% Task 2
%-----Input
a = 6;
b = 6;
c = 6;
d = 6;

no = true;
%-----Output
fprintf('\n\nTASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('a = %5.2f\n', a)
fprintf('b = %5.2f\n', b)
fprintf('c = %5.2f\n', c)
fprintf('d = %5.2f\n\n\n', d)
fprintf('       Answer:\n')
if rem(a,3) == 0
    fprintf('a = %5.2f\n', a)
    no = false;
end
if rem(b,3) == 0
    fprintf('b = %5.2f\n', b)
    no = false;
end
if rem(c,3) == 0
    fprintf('c = %5.2f\n', c)
    no = false;
end
if rem(d,3) == 0
    fprintf('d = %5.2f\n', d)
    no = false;
end
if no
    fprintf('Нет переменных кратных 3!\n')
end
%-----------