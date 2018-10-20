function [ children ] = crossover( parents, chance_mutant )
%CROSSOVER Summary of this function goes here
%   Detailed explanation goes here
size = length(parents);
parents = de2bi(parents);
children = zeros(size,length(parents(1,:)));

for i = 1:2:size
   ind = randi([1 size+1-i],1);
   mam = parents(ind,:);
   parents(ind,:) = [];
   ind = randi([1 size-i],1);
   dad = parents(ind,:);
   parents(ind,:) = [];
   
   position = randi([1 length(mam)-1], 1);
   
   ch1 = [mam(1:position) dad(position+1:length(dad))];
   if(rand() <chance_mutant)
       ch1 = mutant(ch1);
   end
   
   ch2 = [dad(1:position) mam(position+1:length(dad))];
   if(rand() <chance_mutant)
       ch2 = mutant(ch2);
   end
   
   children(i,:) = ch1;
   children(i+1,:) = ch2;
end

children = bi2de(children);

end

