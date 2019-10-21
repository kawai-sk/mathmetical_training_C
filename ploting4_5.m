n = 5;
x = 0:0.001:1;%�ϐ��̒�`��
y1 = 0:0.001:1;
y2 = 0:0.001:1;
z = 0:0.001:1;
for i = 1:1001;
    y1(i)=fini_gen(x(i),n);%Ax=b�������ē�����ߎ���
    y2(i)=fini_gen_double(x(i),n);%A^2x=Ab�������ē�����ߎ���
    z(i)=exact(x(i));%������
end;
w1 = abs(y1-z);%�덷
w2 = abs(y2-z);
plot(x,w1,'-b');
title(strcat('n=',string(n)));

%subplot(2,1,1);
%plot(x,w1,'-b');
%title('Ax=b�������Ƃ��̌덷');

%subplot(2,1,2);
plot(x,w2,'-b');
title('A^2x=Ab�������Ƃ��̌덷');
grid on

%�ȉ��͍s�񐔂̌v�Z
%�萔
L = 1;
c = 0.01;
d = 0.01;
E = 2.1*10^11;
h = L/(2^n);
I = c*d^3/12;

%K,l�����߂�v=[v_0,hv'_0,v_1,hv'_1,...,v_(2^n-1),hv'_(2^n-1)]�ɑ΂���
%�A���ꎟ������ Kv = -l-f ���l����
K_0 = (E*I/h^3)*[12,6,-12,6;6,4,-6,2;-12,-6,12,-6;6,2,-6,4];
K = zeros(2^(n+1),2^(n+1));

for i = 0:(2^n-2);
    K(2*i+1:2*(i+2),2*i+1:2*(i+2)) = K_0+K(2*i+1:2*(i+2),2*i+1:2*(i+2));
end;
K(2^(n+1)-1:2^(n+1),2^(n+1)-1:2^(n+1)) = K_0(1:2,1:2)+K(2^(n+1)-1:2^(n+1),2^(n+1)-1:2^(n+1));

%�s��
disp(cond(K));
disp(cond(K^2));