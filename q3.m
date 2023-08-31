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
[N,D]=ss2tf(A,B,C,D);
H=tf(N,D);

sr=2*step(H,t);
u=4*sin(2*pi*t);
ur=lsim(H,u,t);

subplot(2,1,1),plot(t,sr,'r','linewidth',2)
grid on;
xlabel('time (s)')
ylabel('V_o (V)')
title('output voltage for input 2u(t)')

subplot(2,1,2),plot(t,ur,'b','linewidth',2)
grid on;
xlabel('time (s)')
ylabel('V_o (V)')
title('output voltage for input 4sin(2pit)')
