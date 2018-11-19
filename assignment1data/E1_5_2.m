clc
clear all
close all

%% LOAD DATA %%
im1 = imread ('compEx4im1.JPG');
im2 = imread('compEx4im2.JPG');

load('compEx4.mat');

%% DECOMPOSE CAMERAS %%

[~, ~, cp1, pp1, pv1] = decomposecamera(P1);
[~, ~, cp2, pp2, pv2] = decomposecamera(P2);





figure(1)
hold on
imagesc(im1) 
colormap gray 

figure(2)
hold on
imagesc(im2) 
colormap gray
