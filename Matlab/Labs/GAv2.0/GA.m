clc;
size_population =50;
chance_mutation = 0.2;
best_parents = 5;
step = 0;
interval = [1 1024];
minx =0;

population = init(size_population, interval)
while(step ~= 100)
    step = step + 1;
    fprintf('Step');
    disp(step);
    parents = population;
    population = select(population);
    population = crossover(population, chance_mutation);
    children = population;
    population = select_parents(parents, children, best_parents);
    minx = find(fit_fun(population) == min(fit_fun(population)));
    fprintf('Min');
    disp(population(minx));
end
population

x = interval(1):1:interval(2);
plot(x, y(x));