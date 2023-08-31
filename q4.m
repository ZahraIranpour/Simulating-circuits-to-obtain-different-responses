clc;
clear all;
close all;

syms s;
t=0:0.005:10;

A=[-1 1/3;1 -5/3];
B=[-1/3;2/3];
C=[-1 2/3];
D=[1/3];

sys=ss(A,B,C,D);

H=C*((s*eye(2)-A)^(-1))*B+D;
v=H*2/s
V=ilaplace(v)

fplot(V,[0,12],'r','linewidth',2)
grid on;
xlabel('time (s)')
ylabel('V_o (V)')
title('output voltage for input 2u(t)')