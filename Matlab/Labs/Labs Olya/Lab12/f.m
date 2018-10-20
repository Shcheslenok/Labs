a =0.02;
b = 2.5;
c = 1.2;
x = -3.25;
d= 0.5;
k = 6;

z = ((a*x - b)^2 + abs(d -b) - exp(k * d))/(10^4 * d^5 + b^2 +c) - sin(2) + nthroot((d-b),5);

simin = [0 z];