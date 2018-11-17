X = (1400:400:2200);
T = [0.163 0.192 0.203];
P = [24 36.5 46.54];
B = [6.7 9.4 12.06];
b = [279 257.42 259.35];

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
hold off

tic
for c = [1:1000]
    CP = NewtonInterpolation(X, P);
end
toc