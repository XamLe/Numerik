function [I] = summierteMittelpunktRegel(x, f)

I = 0;
for i = 1:length(x)-1
    I = I + (x(i+1)-x(i)) * f((x(i+1)+x(i))/2);
end
end