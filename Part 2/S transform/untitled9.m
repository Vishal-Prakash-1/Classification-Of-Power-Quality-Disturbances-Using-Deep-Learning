f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Interupt 

u = inline('t >= 0');

A=0.7; 
% define 
t1=100; t2=200;

interupt=(1 + A*(u(t-t1)-u(t-t))).*sinewave;

plot(interupt);
