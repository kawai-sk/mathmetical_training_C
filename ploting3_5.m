n = 2;%n�̒l�͓s�x�ύX
x = 0:0.001:1;%�ϐ��̒�`��
y = 0:0.001:1;
z = 0:0.001:1;
for i = 1:1001;
    y(i)=fini_gen(x(i),n);%�ߎ���
    z(i)=exact(x(i));%������
end;
w = abs(y-z);%�덷
plot(x,w,'-b');
title(strcat('n=',string(n)));
grid on