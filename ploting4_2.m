max_n = 8;%n�̍ő�l�͓s�x�ύX
x = 0:0.01:1;%�ϐ��̒�`��
N = zeros(max_n,1);%�s��̃T�C�Y
T = zeros(max_n,1);%���s����
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