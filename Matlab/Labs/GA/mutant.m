function [ new_pop ] = mutant( pop )
%MUTANT Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(pop);
for i = 1:1:6
bit = randi([1 n*m], 1);
if pop(bit) == 0
   pop(bit) = 1; 
else
    pop(bit) = 0;
end
end

new_pop = pop;


end

