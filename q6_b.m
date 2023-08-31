clc;
clear all;
close all;

% part2
syms s;
t=0:0.005:10;
w=0:0.0005:300;
s=j*w

N=0.3333*s.^2+1.6667*s+1;
D=s.^2+2.6667*s+1.3333;
H=N./D;

A=abs(H)
B=angle(H)*180/pi

subplot(2,1,1),plot(w,A,'r','linewidth',1)
grid on;
xlabel('w')
ylabel('|H(jw)|')

subplot(2,1,2),plot(w,B,'b','linewidth',1)
grid on;
xlabel('w')
ylabel('<H(jw)')