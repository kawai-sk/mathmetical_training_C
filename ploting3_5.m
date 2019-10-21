n = 2;%nの値は都度変更
x = 0:0.001:1;%変数の定義域
y = 0:0.001:1;
z = 0:0.001:1;
for i = 1:1001;
    y(i)=fini_gen(x(i),n);%近似解
    z(i)=exact(x(i));%厳密解
end;
w = abs(y-z);%誤差
plot(x,w,'-b');
title(strcat('n=',string(n)));
grid on