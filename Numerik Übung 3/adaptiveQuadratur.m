function [] = adaptiveQuadratur(f, a, b, tol)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n=3;
x = linspace(a, b, n);
I = [0 1];
while length(I) > 1
    I = 0;
    n = length(x);
    for i = 1:n-1
        e = berechneFehler(f, x(i),x(i+1));
        if e > (tol / n)
            I = [I i];
        end
    end
    %Definiere nun x neu
    for i = 2:length(I)
        x = [x(1:(I(i)+i-2)) (x(I(i)+i-2)+x(I(i)+i-2+1))/2 x(I(i)+i-2+1:end)];
    end
end
%Berechne nun M(f) auf dem Gitter x
n
summierteMittelpunktRegel(x,f)
end

