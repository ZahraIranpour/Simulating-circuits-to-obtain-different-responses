clc;
clear all;
close all;

b=[0.3333    1.6667    1.0000];
a=[1.0000    2.6667    1.3333];
[b,a] = eqtflength(b,a);
[z,p,k] = tf2zp(b,a)

fvtool(b,a,'polezero')
text(real(z)+.1,imag(z),'Zero')
text(real(p)+.1,imag(p),'Pole')