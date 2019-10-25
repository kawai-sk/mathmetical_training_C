function [x] = LU_solve(A,b)%LU•ª‰ð‚É‚æ‚è˜A—§•û’öŽ®‚ð‰ð‚­
n = size(A);
n = n(1);
[L,U] = LU_diss(A);
x = zeros(n,1);
y = zeros(n,1);
y(1) = b(1);
for k = 2:n;
    y(k) = b(k);
    for i = 1:k-1;
        y(k) = y(k)-L(k,i)*y(i);
    end;
end;
x(n) = y(n)/U(n,n);
for k = n-1:-1:1;
    x(k) = y(k);
    for i = k+1:n;
        x(k) = x(k)-U(k,i)*x(i);
    end;
    x(k) = x(k)/U(k,k);
end;
end