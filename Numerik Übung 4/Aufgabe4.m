x = [1.25; 1.35; 1.47; 1.55; 1.59; 1.62; 1.83; 1.92];
y = [2.27; 2.28; 2.67; 2.85; 3.07; 3.09; 4.12; 4.61];
p1 = Augleichsproblem(x, y, 1);
p2 = Augleichsproblem(x, y, 2);

f = @(x) x*p1(1)  + p1(2);
plot(x,y)
hold on
fplot(f)