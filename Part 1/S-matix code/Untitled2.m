clear
A = importdata('saveN.mat');
x=5;

sample = 1/3200;
%st(:,:);
s=[];
[m,n] = size(A)
for x = 1:1:m
    %st = st(A(x:,),0,100,sample);
    y = [];
    y = A(x,1:1280);
    [a,t,f] = st(y,0,100,sample);
    s(:,:,x) = a;
   
end
save('saveB.mat','s');