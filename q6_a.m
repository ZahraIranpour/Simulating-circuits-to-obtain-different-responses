clc;
clear all;
close all;

% part1
syms s;

A=[-1 1/3;1 -5/3];
B=[-1/3;2/3];
C=[-1 2/3];
D=[1/3];

sys=ss(A,B,C,D);
[N,D]=ss2tf(A,B,C,D)