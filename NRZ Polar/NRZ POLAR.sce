clear;
close;
clc;
x=[0,0,1,1,1,0,1,0]
z=0;
for i=1:length(x)
    t=[z:1:z+1]
    subplot(2,1,1)
a=gca();
a.data_bounds=[0,-1.5;length(x),1.5]
a.grid=[1,-1]
title('NRZ POLAR')
if(x(i)==0)
    plot(t,-1)
else
    plot(t,1)
end
    z=z+1    
end
