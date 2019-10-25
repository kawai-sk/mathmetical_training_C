function [L,U] = LU_diss(A)%LU•ª‰ð
n = size(A);
n = n(1);
L = eye(n,n);
U = A;
for k = 1:n-1;
    for i = k+1:n;
        L(i,k) = U(i,k)/U(k,k);
        for j = k:n;
            U(i,j) = U(i,j) - L(i,k)*U(k,j);
        end;
    end;
end;
end