function [e] = berechneFehler(f, c, d)
    h = d - c;
    m = (d+c)/2;
    e = 1/3 * abs((h/2) * (f((c+m)/2)+f((m+d)/2)) - h * f(m));
end