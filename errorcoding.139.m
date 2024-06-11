clc;
clear all;
close all;
n=7; k=4;
msg=[1 0 0 1; 1 0 1 0; 1 0 1 1];

code =encode(msg,n,k,'cyclic');

msg
code
