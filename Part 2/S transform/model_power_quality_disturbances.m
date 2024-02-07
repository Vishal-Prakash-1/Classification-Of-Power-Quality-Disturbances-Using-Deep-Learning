function [  ] = model_power_quality_disturbances( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%This code was published by Aditya Sundar
%Please contact : aditsundar@gmail.com for any doubts regarding the same
%All waveforms have been normalized with respect to a pure 50 Hz sine wave
%Pure Normal 50 Hz sine wave
t=[0 :0.0001:0.4];
y=sin(314*t);
figure(1)
plot(t,y)
title('Pure 50 Hz Sine wave')
%Sag wave
%alpha ranges 0.1 to 0.9
t=[0 :0.0001:0.4];
alpha=0.5;
y=(1-alpha*((heaviside(t-0.05)-heaviside(t-0.15)))).*sin(314*t);
figure(2)
plot(t,y);
title('Sag disturbance');
%swell wave
%alpha ranges 0.1 to 0.8
t=[0 :0.0001:0.4];
alpha=0.5;
y=(1+ alpha*((heaviside(t-0.05)-heaviside(t-0.15)))).*sin(314*t);
figure(3)
plot(t,y);
title('Swell disturbance');
%Interruption
%alpha ranges 0.9 to 1
t=[0 :0.0001:0.4];
alpha=0.95;
y=(1-alpha*((heaviside(t-0.05)-heaviside(t-0.15)))).*sin(314*t);
figure(4)
plot(t,y);
title('Interruption');
%Harmonics
%alpha3,aplha5, alpha7 range from 0.05 to 0.15
 
t=[0 :0.0001:0.4];
alpha3=0.15;
alpha5=0.15;
alpha7=0.15;
alpha1= sqrt(1- alpha3^2-alpha5^2-alpha7^2);
y= alpha1* sin(314*t)+ alpha3*sin(3*314*t)+ alpha5*sin(5*314*t)+ alpha7*sin(7*314*t) ;
figure(5)
plot(t,y)
title('Harmonics');
%Transient
%t1 start duration
%t2 end duration
%ampllitude
%fn goes from 300 to 900
fn=500;
amp= 1;
t1=0.06; t2=0.058; 
ty= (t1+t2)/2;
t=[0 :0.0001:0.4];
amp= 5;
t1=0.06; t2=0.058; 
ty= (t1+t2)/2;
t=[0 :0.0001:0.4];
y= sin(2*pi*50*t)+ amp*(heaviside(t-t2)-heaviside(t-t1)).*exp(-t/ty).*sin(2*3.14*fn*t);
figure(6)
plot(t,y)
title('Transient');
%sag+harmonic 
t=[0 :0.0001:0.4];
alpha=0.5;
alpha3=0.15;
alpha5=0.15;
alpha7=0.15;
alpha1= sqrt(1- alpha3^2-alpha5^2-alpha7^2);
y=(1-alpha*((heaviside(t-0.05)-heaviside(t-0.15)))).*(alpha1* sin(314*t)+ alpha3*sin(3*314*t)+ alpha5*sin(5*314*t)+ alpha7*sin(7*314*t));
figure(7)
plot(t,y)
title('Sag+Harmonics');
%swell+ harmonics
t=[0 :0.0001:0.4];
alpha=0.5;
alpha3=0.15;
alpha5=0.15;
alpha7=0.15;
alpha1= sqrt(1-alpha3^2-alpha5^2-alpha7^2);
y=(1+alpha*((heaviside(t-0.05)-heaviside(t-0.15)))).*(alpha1* sin(314*t)+ alpha3*sin(3*314*t)+ alpha5*sin(5*314*t)+ alpha7*sin(7*314*t));
figure(8)
plot(t,y)
title('Swell+Harmonics');
%Flicker
%alpha ranges 0.1 to 2
%beta ranges 5 to 10
t=[0 :0.0001:0.4];
alpha=0.15;
beta=7.5;
y=(1+alpha*sin(beta*314*t)).*sin(314*t);
figure(9)
plot(t,y)
title('Flicker');
end
    