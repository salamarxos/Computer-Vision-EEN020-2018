clc
clear all 
close all

%% X1 and X2 transdormation %%
H = [1 1 0; 0 1 0; -1 0 1];
x1 = [1;0; 1]; x2 = [0; 1; 1];

y1 = H*x1; y2 = H*x2;

%y1(3)=1;
%% Lines that pass through the points of interset %%
L1 = pflat(cross(x1,x2));
L2 = cross(y1,y2);

figure(1)
markerSize = 6;
hold on
plot(x1(1),x1(2),'o','MarkerSize',markerSize,'MarkerEdgeColor','blue',...
    'MarkerFaceColor','blue')
plot(x2(1),x2(2),'o','MarkerSize',markerSize,'MarkerEdgeColor','blue',...
    'MarkerFaceColor','blue')
rital(L1);
xlim([-1 2])
ylim([-1 2])

figure(2)
markerSize = 6;
hold on
plot(y1(1),y1(2),'o','MarkerSize',markerSize,'MarkerEdgeColor','red',...
    'MarkerFaceColor','red')
plot(y2(1),y2(2),'o','MarkerSize',markerSize,'MarkerEdgeColor','red',...
    'MarkerFaceColor','red')
rital(L2);
xlim([-1 2])
ylim([-1 2])