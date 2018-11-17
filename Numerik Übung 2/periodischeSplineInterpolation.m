function [] = periodischeSplineInterpolation(x,y)
    
%Rufe splineInterpolation auf um die Standardwerte für das LGS zu berechnen
    [n, h, lambda, my, d] = basicSplineInterpolation(x,y);
    
%vervollständige die Werte passend zur natuerlichen Spline Interpolation
    lambda(1) = 0;
    lambda(n+1) = h(1) / (h(n)+h(1));
    my(n+1) = 1- lambda(n+1);
    d(n+1) = (6 / (h(n)+h(1))) * (((y(1)-y(n+1))/h(1)) - (y(n+1)-y(n))/h(n));
    
%Definiere das LGS
    Mat = diag(2*ones(1,n));
    Mat = Mat + diag(lambda(2:n),1);
    Mat = Mat + diag(my(3:n+1),-1);
    Mat = Mat + diag(lambda(n+1),n-1);
    Mat = Mat + diag(my(1),-n+1);
    
%Löse das LGS
    M(2:n+1) = Mat\(d(2:n+1)');
    M(1) = M(n+1);
    
%berechne und Plotte
    [A, B, S] = berechnungUndPlot(x, y, M, h)
    S{1}
    h
    M
    A
    B
end