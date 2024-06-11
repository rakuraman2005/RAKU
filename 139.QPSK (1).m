clc;
clear all;
close all;
Tb=3;
t=0:(Tb/100):Tb;
fc=1;
c1=sqrt(2/Tb)*cos(2*pi*fc*t);
c2=sqrt(2/Tb)*sin(2*pi*fc*t);
N=20;
m=rand(1,N);
t1=0;
t2=Tb;
for i=1:2:(N-1)
t=[t1:(Tb/100):t2];
if m(i)>0.5
m(i)=1;
m_so= ones (1,length(t));
else
m(i)=0;
m_so= -1*ones (1,length(t));
end
% m_s1(i,:)=m_so;
% subplot(4,2,1);
% plot(t,m_s1(i,:));
odd_sig(i,:)=c1.*m_so;
subplot(3,2,2);
plot(t,odd_sig(i,:));
title('odd signal');
xlabel('t--->');
ylabel('o(t)');
grid on;
hold on;
if m(i+1)>0.5
m(i+1)=1;
m_se=ones(1,length(t));
else
m(i+1)=0;
m_se=-1*ones(1,length(t));
end
% m_s2(i+1,:)=m_se;
% subplot(4,2,2);
% plot(t,m_s2(i+1,:));
even_sig(i,:)=c2.*m_se;
subplot(3,2,3);
plot(t,even_sig(i,:));
title('even signal');
xlabel('t--->');
ylabel('e(t)');
grid on;
hold on;
qpsk=odd_sig+even_sig;
subplot(3,2,6);
plot(t,qpsk(i,:));
title('qpsk signal');
xlabel('t--->');
ylabel('s(t)');
grid on;
hold on;
t1=t1+(Tb+.01);
t2=t2+(Tb+.01);
end
hold off ;
subplot(3,2,1);
stem(m);
title('binary data bits'); xlabel('n--->');ylabel('b(n)'); grid on;
subplot(3,2,4);plot(t,c1);
title('carrier signal-1'); xlabel('t--->');ylabel('c1'); grid on;
subplot(3,2,5);plot(t,c2);
title('carrier signal-2'); xlabel('t--->');ylabel('c2'); grid on;