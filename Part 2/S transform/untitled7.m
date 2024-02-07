f=50;
w=2*pi*f;
sinewave=sin(w*t);
% SWELL 

u = inline('t >= 0');

A=0.7; 
% define 
t1=100; t2=200;

swell=(1 + A*(u(t-t1)-u(t-t2))).*sinewave;

plot(swell);

st=stran(swell);
plot(st);