x = 0:0.001:1;%•Ï”‚Ì’è‹`ˆæ
y = 0:0.001:1;
z = 0:0.001:1;
for i = 1:1001;
    y(i)=fini(x(i));%‹ß—‰ğ
    z(i)=exact(x(i));%Œµ–§‰ğ
end;
w = abs(y-z);%Œë·

subplot(3,1,1);%‹ß—‰ğ‚Ì•`‰æ
plot(x,y,'-b');
title('‹ß—‰ğ');

subplot(3,1,2);%Œµ–§‰ğ‚Ì•`‰æ
plot(x,z,'--r');
title('Œµ–§‰ğ');

subplot(3,1,3);%Œë·‚Ì•`‰æ
plot(x,w,'-b');
title('Œë·');
grid on