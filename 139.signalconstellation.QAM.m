clc;
clear all;
close all;
M=16;
N=4000;
x=randi([0,1],1,N);
yy=[];
for i=1:4:length(x)
if x(i)==0 && x(i+1)==0 && x(i+2)==1 && x(i+3)==0 y=-3+1j*3;
elseif x(i)==0 && x(i+1)==1 && x(i+2)==1 && x(i+3)==0 y=-1+1j*3;

 elseif x(i)==0 && x(i+1)==0 && x(i+2)==1 && x(i+3)==1 y=-3+1j*1; 
 elseif x(i)==0 && x(i+1)==1 && x(i+2)==1 && x(i+3)==1 y=-1+1j*1; 
 elseif x(i)==1 && x(i+1)==1 && x(i+2)==1 && x(i+3)==0 y=1+1j*3; 
 elseif x(i)==1 && x(i+1)==0 && x(i+2)==1 && x(i+3)==0 y=3+1j*3;
 elseif x(i)==1 && x(i+1)==1 && x(i+2)==1 && x(i+3)==1 y=1+1j*1; 
 elseif x(i)==1 && x(i+1)==0 && x(i+2)==1 && x(i+3)==1 y=3+1j*1; 
 elseif x(i)==0 && x(i+1)==0 && x(i+2)==0 && x(i+3)==1 y=-3-1j*1;
 elseif x(i)==0 && x(i+1)==1 && x(i+2)==0 && x(i+3)==1 y=-1-1j*1; 
 elseif x(i)==0 && x(i+1)==0 && x(i+2)==0 && x(i+3)==0 y=-3-1j*3; 
 elseif x(i)==0 && x(i+1)==1 && x(i+2)==0 && x(i+3)==0 y=-1-1j*3; 
 elseif x(i)==1 && x(i+1)==1 && x(i+2)==0 && x(i+3)==1 y=1-1j*1;
 elseif x(i)==1 && x(i+1)==0 && x(i+2)==0 && x(i+3)==1 y=3-1j*1;
 elseif x(i)==1 && x(i+1)==1 && x(i+2)==0 && x(i+3)==0 y=1-1j*3; 
 elseif x(i)==1 && x(i+1)==0 && x(i+2)==0 && x(i+3)==0 y=3-1j*3; 
 end
yy=[yy y];
end
scatterplot(yy);
EbNOdB=5;
EbNO=10^(EbNOdB/10);
n=(1/sqrt(2))*[randn(1, length(yy))+sqrt(-1)*randn(1, length(yy))]; 
sigma=sqrt(1/((log2(M))*EbNO));
r=yy+sigma*n; 
scatterplot(r); grid on;