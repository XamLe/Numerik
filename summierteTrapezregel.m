function [T] = summierteTrapezregel(n)
g = @(x) 5/(exp(pi)-2) * exp(2*x) .* cos(x);
h = pi/(2*n);
x= [0:h:pi/2];
y = g(x);
T = sum(y(2:n)) + y(1)/2 + y(n+1)/2;
T = h*T;
end