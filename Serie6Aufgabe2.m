b = zeros(1,4);
for j = 1:4
    b(j) = (j)/sqrt(4*(j)^2 - 1);
end
J = zeros(5) + diag(b,1) + diag(b, -1);
eig(J)