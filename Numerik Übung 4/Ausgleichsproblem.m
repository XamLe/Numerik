function [k] = Ausgleichsproblem(x,y, n)

A = x.^0;
for i = 1:n
    A = [x.^i A];
end
[Q,R] = QRZerlegung(A);

%Minimiere den Fehler
% Finde x, so dass ||Rk - y|| --> min!
RSchl = R(1:n+1, 1:n+1);
y = Q'*y;
ySchl = y(1:n+1);
k = RSchl\(ySchl);
end