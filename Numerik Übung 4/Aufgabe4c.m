x = [1.25; 1.35; 1.47; 1.55; 1.59; 1.62; 1.83; 1.92];
y = [2.27; 2.28; 2.67; 2.85; 3.07; 3.09; 4.12; 4.61];

A = x.^0;
for i = 1:1
    A = [x.^i A];
end

R = chol(A' * A);
c = R'\(A'*y);
p = R\c;
fprintf('Die Koeffizienten von p1 sind: %s\n', p)

A = x.^0;
for i = 1:2
    A = [x.^i A];
end

R = chol(A' * A);
c = R'\(A'*y);
p = R\c;
fprintf('Die Koeffizienten von p2 sind: %s\n', p)