
polynom = @(x) InterpolAusw(x, X, C);
fplot(polynom,[0 5])
hold on
f = @func;
fplot(f)

function [y] = func(x)
    y = 
end