clc;
clear all;
close all;
q=3;
n=2^q-1;
k=n-q;
parmat = hammgen(q);
trt=syndtable(parmat);
recd=[1 0 1 1 1 1 0];
syndrome = rem(recd * parmat',2);
syndrome_de = bi2de(syndrome,'left-msb');

disp(['Syndrome =',num2str(syndrome_de),'(decimal)',num2str(syndrome),'(binary)']);

corrvect = trt(1+syndrome_de,:);

correctedcode= rem(corrvect+recd,2);
parmat
corrvect
correctedcode