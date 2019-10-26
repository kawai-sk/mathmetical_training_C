max_n = 8;%n�̍ő�l�͓s�x�ύX
x = 0:0.01:1;%�ϐ��̒�`��
N = zeros(max_n,1);%�s��̃T�C�Y
T1 = zeros(max_n,1);
T2 = zeros(max_n,1);%���s����
for n = 1:max_n;
    t1 = 0;
    t2 = 0;
    for i = 1:101;
        t1 = t1 + fini_LUtime(x(i),n);%LU����
        t2 = t2 + fini_AdChtime(x(i),n);%�C��Cholesky����
    end;
    T1(n) = t1;
    T2(n) = t2;
    N(n) = (2^(n+1))^3;
end;
plot(N,T1,'-b.',N,T2,'-r.');
title('LU�����ƏC��Cholesky�����̔�r');
legend('LU����','�C��Cholesky����');
grid on