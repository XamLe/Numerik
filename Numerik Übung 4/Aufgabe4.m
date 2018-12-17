x = [1.25; 1.35; 1.47; 1.55; 1.59; 1.62; 1.83; 1.92];
y = [2.27; 2.28; 2.67; 2.85; 3.07; 3.09; 4.12; 4.61];
p1 = Ausgleichsproblem(x, y, 1);
p2 = Ausgleichsproblem(x, y, 2);

f = @(x) x*p1(1)  + p1(2);
g = @(x) x.^2 * p2(1) + x .* p2(2) + p2(3);

plot(x,y)
hold on
fplot(f, [1 2])
fplot(g, [1 2])

legend('Werte', 'n = 1', 'n = 2');

%Teste Mittelwert der Abweichungen
fprintf('Abweichung Polynom Grad 1 = %6.2f\n', sum(f(x)-y))

fprintf('Abweichung Polynom Grad 2 = %s\n', sum(g(x)-y))
