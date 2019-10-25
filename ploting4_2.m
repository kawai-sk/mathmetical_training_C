max_n = 8;%nの最大値は都度変更
x = 0:0.01:1;%変数の定義域
N = zeros(max_n,1);%行列のサイズ
T = zeros(max_n,1);%実行時間
for n = 1:max_n;
    t = 0;
    for i = 1:101;
        t = t + fini_LUtime(x(i),n);
    end;
    T(n) = t;
    N(n) = (2^(n+1))^3;
end;
plot(N,T,'-b.');
title('');
grid on