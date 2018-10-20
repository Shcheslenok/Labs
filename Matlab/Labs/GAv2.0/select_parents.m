function [ population ] = select_parents( parents, children, best_parents )
%SELECT_PARENTS Summary of this function goes here
%   Detailed explanation goes here
fit_parents = fit_fun(parents);
fit_children = fit_fun(children);
par = zeros(1,best_parents);
child = zeros(1,length(children)-best_parents);

for i=1:1:best_parents
    ind = find(fit_parents == min(fit_parents));
    par(i) = parents(ind(1));
    fit_parents(ind(1)) = [];
    parents(ind(1)) = [];
end

for i=1:1:length(children)-best_parents
    ind = randi([1 length(children)], 1);
    child(i) = children(ind);
    fit_children(ind(1)) = [];
    children(ind(1)) = [];
end

population = [par child];
end

