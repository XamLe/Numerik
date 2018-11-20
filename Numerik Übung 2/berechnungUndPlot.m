function [A, B, S] = berechnungUndPlot(x, y, M, h)

    n = length(x) - 1;
    
    %Definiere A
    A = zeros(1,n);
    for i = 1:n
        A(i) = ((y(i+1)-y(i)) / h(i)) - h(i)/6 * (M(i+1)-M(i));
    end
    
    %Definiere B
    B = zeros(1,n);
    for i = 1:n
        B(i) = y(i) - M(i)*((h(i)^2) / 6);
    end
    
    %Definiere S
    S = cell(1,n);
    for i = 1:n
       S{i} = @(t) (M(i+1) * (t-x(i)).^3 / (6 * h(i))) + (M(i) * (x(i+1)-t).^3 ./ (6 * h(i))) + A(i) * (t - x(i)) + B(i);
    end
    
    %Plote die Ergebnisse
    
    
    hold on
    for i = 1:n
        t = x(i):0.1:x(i+1);
        plot(t,S{i}(t),'-');
    end
    plot(x,y,'o')
end