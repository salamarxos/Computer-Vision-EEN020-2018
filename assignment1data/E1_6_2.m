clc
clear all
close all

%% LOAD DATA %%
im = imread ('CompEx5.jpg');
load('compEx5.mat');

%% PLOT IMAGE AND CORNERS%%
figure(1)
imagesc(im)
hold on
colormap gray
    \thesubsection{Exercise 5}\\
    \thesubsection{Computer Exercise 4}\\
axis equal
plot(corners(1,[1: end 1]),corners (2,[1: end 1]),'*-');

%% CALIBRATE %%
norm_corners = pflat(pinv(K)*corners) ;
figure(2)
plot(norm_corners(1,[1: end 1]),norm_corners (2,[1: end 1]),'*-');

