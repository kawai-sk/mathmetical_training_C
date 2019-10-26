function [L,d] = AdCh(A)%èCê≥Choleskyï™â
n = size(A);
n = n(1);
L = eye(n,n);
d = zeros(n,1);
d(1) = A(1,1);
for i = 2:n;
    L(i,1) = A(i,1)/d(1);
end;
for k = 2:n;
    d(k) = A(k,k);
    for i = 1:k-1;
        d(k) = d(k) - d(i)*L(k,i)^2;
    end;
    for i = k+1:n;
        L(i,k) = A(i,k);
        for j = 1:k-1;
            L(i,k) = L(i,k) - d(j)*L(i,j)*L(k,j);
        end;
        L(i,k) = L(i,k)/d(k);
    end;
end;
end