A = importdata(['saveH.mat']);
A;

B=A(:,1:1280)
fs=3200;

[m,n]=size(B);
for x=1:2
    x
    y=B(x,:);
    [st,t,f] = stft(y,fs,Window=kaiser(128,20),OverlapLength=64,FFTLength=256);
    p = abs(st);
    figure
    contourf(t,f,p)
    %saveas(gcf,'myFigure.png');
    hgsave('name_of_my_image');
end