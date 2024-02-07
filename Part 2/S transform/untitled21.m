
f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Flicker
alpha_f=.1;
beta_f=5;
temp_f=(1 + alpha_f * sin(2*pi*beta_f*t))
flicker= (temp_f).* sin(w*t);
plot(flicker);
