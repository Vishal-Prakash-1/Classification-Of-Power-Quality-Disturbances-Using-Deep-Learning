
f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Sag +Harmonics 

alpha_sh=0.6;
alpha1_sh=0.05;
alpha3_sh= 0.015;
alpha5_sh= 0.01;
temp_sh=(1 - alpha_sh*(u(t - t1) - u(t - t2))) ;
sag_harmonics = (temp_sh).*(alpha1_sh*sin(w*t) + alpha3_sh*sin(3*w*t) + alpha5_sh*sin(5*w*t));
plot(sag_harmonics);
