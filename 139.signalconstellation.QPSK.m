clc;
clear all;
close all;
M=16;
N=1000;
x=randi([0,1],1,N); 
yy=[];
for i=1:2:length(x)
if x(i)==0 && x(i+1)==0 y=cosd(225)+1j*sind(225); 
elseif x(i)==0 && x(i+1)==1 y=cosd(135)+1j*sind(135); 
elseif x(i)==1 && x(i+1)==0 y=cosd(315)+1j*sind(315);
elseif x(i)==1 && x(i+1)==1 y=cosd(45)+1j*sind(45);
end
yy=[yy y];
end
scatterplot(yy);
EbNOdB=15;
EbNO=10^(EbNOdB/10);
n=(1/sqrt(2))*[randn(1, length(yy))+1j*randn(1, length(yy))]; 
sigma=sqrt(1/((log2(M))*EbNO));
r=yy+sigma*n;
scatterplot(r); 
grid on;
hold on;