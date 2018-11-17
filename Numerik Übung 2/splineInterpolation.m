function [n, h, lambda, my, d] = splineInterpolation(x,y)

%splineInterpolation Berechnet kubische Splines
%   Berechnet die kubischen Splines aus den Stützstellen x und den
%   Funktionswerten y
    
%definiere n
    n = length(x) - 1;
    
%definiere h
    h = zeros(1,n);
    for i = 1:n
        h(i) = x(i+1)-x(i);
    end
    
%definiere lambda
    lambda = zeros(1,n+1);
    for  i = 2:n
        lambda(i) = h(i) / (h(i) + h(i-1));
    end
    %vorsicht: lambda(1) fehlt noch, abhängig von Art des Splines
    
%definiere my
    my = zeros(1,n+1);
    my = 1 - lambda;
    
%definiere d
    d = zeros(1,n+1);
    for i = 2:n
        d(i) = (6 / (h(i)+h(i-1))) * (((y(i+1)-y(i)) / h(i)) - ((y(i)-y(i-1))/h(i-1)));
    end
end

