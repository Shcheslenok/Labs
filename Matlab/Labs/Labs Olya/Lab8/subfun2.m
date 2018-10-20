function [minx, X] = subfun2( C )
%SUBFUN Summary of this function goes here
%   Detailed explanation goes here
% s = length(C);
% index = 1; 
% first = 0;
% 
% while(index < s)
%     if(C(index) < 0)
%         first = index;
%         break;
%     end
%     index = index + 1;
% end
% index = 1;
% min = 1;
% if(first ~= 1)
%     while(index < first)
%         if(min < C(index))
%             min = index;
%         end
%         index = index + 1;
%     end
% end

index = find(C < 0);
if(index(1) ~= 1)
    mass1 = C(1: index(1)-1);
    minx = min(mass1);
else
    minx = [];
end
    mass2 = C(index(1):length(C));
    X = mass2(find(mass2 > 0));
end

