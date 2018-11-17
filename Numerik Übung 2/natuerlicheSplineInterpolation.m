function [] = natuerlicheSplineInterpolation(x,y)
    
%Rufe splineInterpolation auf um die Standardwerte für das LGS zu berechnen
    [n, h, lambda, my, d] = basicSplineInterpolation(x,y);
    
%vervollständige die Werte passend zur natuerlichen Spline Interpolation
    lambda(1) = 0;
    d(1) = 0;
    my(n+1) = 0;
    d(n+1) = 0;
    
%Definiere das LGS
    Mat = diag(2*ones(1,n+1));
    Mat = Mat + diag(lambda(1:n),1);
    Mat = Mat + diag(my(2:n+1),-1);
    
%Löse das LGS
    M = Mat\(d');
    
%berechne und Plotte
    [A, B, S] = berechnungUndPlot(x, y, M, h)
    S{1}
    h
    M
    A
    B
end