function [] = adaptiveQuadratur(a, b, tol)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n=10;
H = b - a;
x = linspace(a, b, n);
I = 1;
while I ~= 0
    for i = 1:n
        I = 0;
        f = berechneFehler(x(i),x(i+1));
        if f > tol / n
            I = [I i];
        end
    end
    %Definiere nun x neu
    for i = 2:length(I)
        x = [x(1:I(i)) (x(I(i))+x(I(i)+1))/2 x(I(i)+1:length(x))];
    end
end
%Berechne nun M(f) auf dem Gitter x
end

