function [T] = summierteTrapezregeltan(n)
tic
g = @(x) 1./(1+x.^2);
h = 200/(n);
x= [-100:h:100];
y = g(x);
T = sum(y(2:n)) + y(1)/2 + y(n+1)/2;
T = (h)*T;
toc
end