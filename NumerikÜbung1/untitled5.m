X = (1400:400:3400);
T = [0.163 0.192 0.203 0.199 0.19 0.18];
P = [24 36.5 46.5 53.9 60 64];
B = [6.7 9.4 12.06 14.4 16.2 18];
b = [279 257.42 259.35 267.16 270 281.25];

CT = NewtonInterpolation(X,T);
Tx = @(x) InterpolAusw(x, X, CT);
fplot(Tx, [1400 3400])

hold on

CP = NewtonInterpolation(X, P);
Px = @(x) InterpolAusw(x, X, CP);
fplot(Px, [1400 3400])

CB = NewtonInterpolation(X, B);
Bx = @(x) InterpolAusw(x, X, CB);
fplot(Bx, [1400 3400])

Cb = NewtonInterpolation(X, b);
bx = @(x) InterpolAusw(x, X, Cb);
fplot(bx, [1400 3400])