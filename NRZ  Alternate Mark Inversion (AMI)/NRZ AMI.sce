clear;
close;
clc;
x=[0,0,1,1,1,0,1,0]
z=0;
ob=-1;
for i=1:length(x)
    subplot(2,1,1)
a=gca();
a.data_bounds=[0,-1.5;length(x),1.5]
a.grid=[1,-1]
title('NRZ AMI')
if(x(i)==0)
    t=[z:1:z+1]
    plot(t,0)
else
    t=[z:1:z+1]
    ob=-ob
    plot(t,ob)
end
    z=z+1    
end
