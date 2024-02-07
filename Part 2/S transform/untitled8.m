f=50;
w=2*pi*f;
sinewave=sin(w*t);
% Oscillatory transient
alpha= 0.8;
fn= 350;
Tow = 10e-3;
temp_o= exp(-(t - t1)*Tow)
osci_trans =sin(w*t)+ (alpha * temp_o.* ((u(t - t1) - u(t - t2)).* sin(2*pi*fn*t)));
plot(osci_trans);
st=stran(osci_trans);
plot(st);
