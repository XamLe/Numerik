function [] = adaptiveQuadratur(f, a, b, tol)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n=5;
x = linspace(a, b, n);
I = 1;
while I ~= 0
    I = 0;
    n = length(x);
    for i = 1:n-1
        e = berechneFehler(f, x(i),x(i+1));
        if e > tol / n
            I = [I i]
        end
    end
    %Definiere nun x neu
    for i = 2:length(I)
        x = [x(1:I(i)) (x(I(i))+x(I(i)+1))/2 x(I(i)+1:length(x))]
    end
end
%Berechne nun M(f) auf dem Gitter x
summierteMittelpunktRegel(x,f)
end

