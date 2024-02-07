% swell
clear all
clc
y = [];
sample = 1/3200;
i = 1;
for t = 0:sample:0.2-(1/3200)
    if t >= 0.02 && t < 0.06
        y(i) = 2*sin(2*pi*50*t);
    else
        y(i) = sin(2*pi*50*t);
    end
    i = i+1;
end
[st,t,f] = st(y,0,100,sample);
figure
plot(t,y)
z = abs(st);
figure
contourf(t,f,z)