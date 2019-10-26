function [L,U] = LUband_diss(A,l,p) %帯行列用LU分解,Aは疎行列表現
n = size(A);
n = n(1);
L = eye(n,n);
U = A;
for k = 1:n-1;
    for i = k+1:min(k+l,n);
        L(i,k) = U(i,k)/U(k,k);
        for j = k:min(k+p,n);
            U(i,j) = U(i,j) - L(i,k)*U(k,j);
        end;
    end;
end;
end