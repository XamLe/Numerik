
function [y] = InterpolAusw(x, X, C)
p = 0;
for i = 1:length(X)
    a = 1;
    for k = 1:i-1
        a = a*(x-X(k));
    end
    p = p + C(i)* a;
end
y = p;
end