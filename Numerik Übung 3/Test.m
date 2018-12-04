g = @(x) (5/(exp(pi)-2)) * exp(2*x) * cos(x);
a = 0
b = pi/2
tol = 10^-5
adaptiveQuadratur(g, a, b, tol)