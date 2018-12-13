function [Q, R] = QRZerlegung(A)

[m, n] = size(A);
Q = eye(m);
for i=1:n
   x = A(i:end, i);
   gamma = sign(A(i,i)) * norm(x);
   e = zeros(m+1-i,1);
   e(1) = 1;
   y = gamma * e;
   w = (x+y)/norm(x+y);
   TempH = (eye(m+1-i)-2*w*w');
   H = eye(m);
   H(i:end, i:end) = TempH;
   A = H*A;
   Q = Q * H;
end
% Setze linkes unteres Dreieck auf 0
R = A;
for i = 1:n
    R(i+1:end,i) = 0;
end
end