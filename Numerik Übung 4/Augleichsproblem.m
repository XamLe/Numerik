function [x] = Augleichsproblem(x,y, n)

A = x.^0;
for i = 1:n
    A = [x.^i A];
end
[Q,R] = QRZerlegung(A);

%Minimiere den Fehler
% Finde x, so dass R*x = y
x = y\R;
end