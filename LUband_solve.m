function [x] = LUband_solve(A,l,p,b) %帯行列用LU分解によりAx=bを解く,Aは疎行列表現
n = size(A);
n = n(1);
[L,U] = LUband_diss(A,l,p);%A=LU
x = zeros(n,1);%Ax=b
y = zeros(n,1);%y=Ux,Ly=b
y(1) = b(1);
for k = 2:n;
    y(k) = b(k);
    for i = max(1,k-l):k-1;
        y(k) = y(k)-L(k,i)*y(i);
    end;
end;
x(n) = y(n)/U(n,n);
for k = n-1:-1:1;
    x(k) = y(k);
    for i = k+1:min(n,k+p);
        x(k) = x(k)-U(k,i)*x(i);
    end;
    x(k) = x(k)/U(k,k);
end;
end