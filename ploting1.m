x = 0:0.001:1;%�ϐ��̒�`��
y = 0:0.001:1;
z = 0:0.001:1;
for i = 1:1001;
    y(i)=fini(x(i));%�ߎ���
    z(i)=exact(x(i));%������
end;
w = abs(y-z);%�덷

subplot(3,1,1);%�ߎ����̕`��
plot(x,y,'-b');
title('�ߎ���');

subplot(3,1,2);%�������̕`��
plot(x,z,'--r');
title('������');

subplot(3,1,3);%�덷�̕`��
plot(x,w,'-b');
title('�덷');
grid on