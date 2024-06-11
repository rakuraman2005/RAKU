clc;

clear all;
close all;
t = 0:0.0001:0.15;
c11 = sin(2*pi*60*t);
m = square (2*pi*10*t);
c22 = sin((2*pi*60*t)+ pi);
for i = 1:1500
if(m(i)==1)
s2(i)=c11(i);
else
s2(i)=c22(i);
end
end
figure(3);
subplot(4,1,1);
plot(m);
subplot (4,1,2);
plot(c11);
subplot (4,1,3);
plot(c22);
subplot (4,1,4);
plot(s2);