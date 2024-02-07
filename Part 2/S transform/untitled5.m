
f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Harmonics 
alpha1_h=1;
alpha3_h= 0.015
alpha5_h= 0.01
alpha7_h=0.09

harmonics =alpha1_h* sin(w*t) + alpha3_h * sin(3*w*t)+ alpha5_h * sin(5*w*t) + alpha7_h * sin(7*w*t);
plot(harmonics);