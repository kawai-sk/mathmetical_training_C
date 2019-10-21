max_n = 8;

x = 0:0.001:1;%変数の定義域
y = 0:0.001:1;
z = 0:0.001:1;
w = zeros(max_n,1);
h = zeros(max_n,1);

for n = 1:max_n;
    for i = 1:1001;
        y(i)=fini_gen(x(i),n);%近似解
        z(i)=exact(x(i));%厳密解
    end;
    w(n) = max(abs(y-z));%誤差の最大値
    h(n) = 1/2^n;%分割数
end;
subplot(2,1,1);%誤差の最大値の描画
plot(h,w,'-b.');
title('hに対する誤差の最大値');

subplot(2,1,2);%誤差の最大値の両対数グラフの描画
loglog(h,w,'-b.')
title('hに対する誤差の最大値（両対数）');

grid on

% w=c*h^aすなわち log(w)=a*log(h)+log(c)となるa,cを近似して求める
% このとき (誤差の最大値=)w は h^(p(1)) に比例。
p=polyfit(log(w),log(h),1);
disp(p(1));