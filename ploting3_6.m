max_n = 8;

x = 0:0.001:1;%�ϐ��̒�`��
y = 0:0.001:1;
z = 0:0.001:1;
w = zeros(max_n,1);
h = zeros(max_n,1);

for n = 1:max_n;
    for i = 1:1001;
        y(i)=fini_gen(x(i),n);%�ߎ���
        z(i)=exact(x(i));%������
    end;
    w(n) = max(abs(y-z));%�덷�̍ő�l
    h(n) = 1/2^n;%������
end;
subplot(2,1,1);%�덷�̍ő�l�̕`��
plot(h,w,'-b.');
title('h�ɑ΂���덷�̍ő�l');

subplot(2,1,2);%�덷�̍ő�l�̗��ΐ��O���t�̕`��
loglog(h,w,'-b.')
title('h�ɑ΂���덷�̍ő�l�i���ΐ��j');

grid on

% w=c*h^a���Ȃ킿 log(w)=a*log(h)+log(c)�ƂȂ�a,c���ߎ����ċ��߂�
% ���̂Ƃ� (�덷�̍ő�l=)w �� h^(p(1)) �ɔ��B
p=polyfit(log(w),log(h),1);
disp(p(1));