clc;
imax = 31;
x = 0:1:imax;
y = cos(x).*x + sin(x);
plot(x, y);

sol = de2bi(x);
num_pop = 6;
pop = sol(randperm(imax,num_pop),:);

% fit_per = cos(bi2de(pop)).*bi2de(pop) + sin(bi2de(pop));
fit_ch = zeros(1,num_pop);
ch = zeros(num_pop, length(de2bi(imax)));

while fit_ch ~= min(y)
fit_per = fit_ch;
for i = 1:2:num_pop
    
    term1 = pop(i,:);
    term2 = pop(i+1,:);
    
    ch1 = [term1(1:2) term2(3:length(term2))];
    ch2 = [term2(1:2) term1(3:length(term1))];
    
    ch(i,:) = ch1;
    ch(i+1,:) = ch2;

end

ch = [ch(3: num_pop,:); ch(1:2,:)];

bi2de(ch)
fit_ch = cos(bi2de(ch)).*bi2de(ch) + sin(bi2de(ch));

arg = mutant(ch);
pop = ch;

end