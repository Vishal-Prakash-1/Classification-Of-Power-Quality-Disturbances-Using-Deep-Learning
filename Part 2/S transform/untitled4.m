
f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Swell +Harmonics 

alpha_swh=0.6;
alpha1_swh=0.05;
alpha3_swh= 0.015;
alpha5_swh= 0.01;
temp_swh=(1 + alpha_swh*(u(t - t1) - u(t - t2))) ;
swell_harmonics = (temp_swh).*(alpha1_swh*sin(w*t) + alpha3_swh*sin(3*w*t) + alpha5_swh*sin(5*w*t));
plot(swell_harmonics);

