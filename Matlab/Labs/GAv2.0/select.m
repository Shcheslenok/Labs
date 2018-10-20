function [ children ] = select( parents )
%SELECT Summary of this function goes here
%   Detailed explanation goes here
size = length(parents);

children = zeros(1,size);
fit_parents = fit_fun(parents);
    for i=1:1:size
        opponents = randi([1 size], 1, 2);
        if(fit_parents(opponents(1)) < fit_parents(opponents(2)))
            children(i) = parents(opponents(1));
        else
            children(i) = parents(opponents(2));
        end
    end
end

