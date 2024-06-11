clc;
clear all;
close all;
t = 0:0.0001: 0.3;
m = square (2*pi*10*t);
c1 = sin (2*pi*60*t);
c2 = sin (2*pi*120*t);
for i = 1 : 3000
if(m(i)==1)
s1(i)=c2(i);
else s1(i)=c1(i);
end
end
figure(2);
subplot(4,1,1);
plot(m);
subplot(4,1,2);
plot(c1);
subplot(4,1,3);
plot(c2);
subplot(4,1,4);
plot(s1);