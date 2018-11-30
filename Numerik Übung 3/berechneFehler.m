function [e] = berechneFehler(f, c, d)
    e = 1/3 * abs(((d-c)/2)*(f((c+((c+d)/2))/2)+f(((c+d)/2)+d)/2)) - (d-c) * f((d-c)/2);
end