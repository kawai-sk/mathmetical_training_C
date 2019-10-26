max_n = 8;%nの最大値は都度変更
x = 0:0.01:1;%変数の定義域
N = zeros(max_n,1);%行列のサイズ
T1 = zeros(max_n,1);
T2 = zeros(max_n,1);%実行時間
for n = 1:max_n;
    t1 = 0;
    t2 = 0;
    for i = 1:101;
        t1 = t1 + fini_LUtime(x(i),n);%LU分解
        t2 = t2 + fini_AdChtime(x(i),n);%修正Cholesky分解
    end;
    T1(n) = t1;
    T2(n) = t2;
    N(n) = (2^(n+1))^3;
end;
plot(N,T1,'-b.',N,T2,'-r.');
title('LU分解と修正Cholesky分解の比較');
legend('LU分解','修正Cholesky分解');
grid on