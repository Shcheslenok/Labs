%% Lab5 var 11
% Shcheslenok Peter
%% Task 1
clc;
clear;
%-----Input
x = [0, 5, 9, 30, 5];
count = 0;
for i = 1:1:length(x)
   if rem(x(i),5) == 0
       count = count + 1;
   end
end
disp(count);

k = find(rem(x,5) == 0);

%-----Output
fprintf('TASK1\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
fprintf('x = %5.2f\n', x)

fprintf('       Answer:\n')
fprintf('count1 = %10.6f\n', count)
fprintf('count2 = %10.6f\n', length(k))
%-----------

%% Task 2
%-----Input
C = randi([-20, 20],8,9);
C1=triu(C);
C1 = C - C1;

mid = 0;
count = 0;
[m,n] = size(C);
for i = 2:1:8
   for j = 1:1:i-1
       mid = mid + C(i,j);
       if C(i,j) > 0
           count = count + 1;
       end
   end
end
mid1 = mid/28;

s = sum(C1);
mid2 = sum(s);
mid2 = mid2/28;

k = find(C1 > 0);

%-----Output
fprintf('TASK2\n')
fprintf('     Input Data\n')
fprintf('---------------\n')
C
%fprintf('C = %5.2f\n', C(:,:))

fprintf('       Answer:\n')
fprintf('count1 = %10.6f\n', count)
fprintf('mid1= %10.6f\n', mid1)
fprintf('count2 = %10.6f\n', length(k))
fprintf('mid2 = %10.6f\n', mid2)
%-----------