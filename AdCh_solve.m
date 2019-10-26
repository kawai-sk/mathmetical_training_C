function [x] = AdCh_solve(A,b)%èCê≥Choleskyï™âÇ…ÇÊÇËAx=bÇâÇ≠
n = size(A);
n = n(1);
[L,d] = AdCh_diss(A);
x = zeros(n,1);%Ax=LDL^Tx=b
y = zeros(n,1);%y=L^Tx,Dy=z
z = zeros(n,1);%z=DL^Tx,Lz=b
z(1) = b(1)/L(1,1);
for k = 2:n;
    z(k) = b(k);
    for i = 1:k-1;
        z(k) = z(k)-L(k,i)*z(i);
    end;
    z(k) = z(k)/L(k,k);
end;
for k = 1:n;
    y(k) = z(k)/d(k);
end;
x(n) = y(n)/L(n,n);
for k = n-1:-1:1;
    x(k) = y(k);
    for i = k+1:n;
        x(k) = x(k)-L(i,k)*x(i);
    end;
    x(k) = x(k)/L(k,k);
end;
end