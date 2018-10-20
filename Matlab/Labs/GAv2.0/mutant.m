function [ new_individ ] = mutant( individ )
%MUTANT Summary of this function goes here
%   Detailed explanation goes here
bit = randi([1 length(individ)],1);
if individ(bit) == 0
    individ(bit) = 1; 
else
    individ(bit) = 0;
end

new_individ = individ;

end

