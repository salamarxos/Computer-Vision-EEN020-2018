clc
clear all 
close all

load('compEx3.mat');
H1 = [sqrt(3) -1 1; 1 sqrt(3) 1; 0 0 2];
H2 = [1 -1 1; 1 1 0; 0 0 1];
H3 = [1 1 0; 0 2 0; 0 0 1];
H4 = [sqrt(3) -1 1; 1 sqrt(3) 1; 1/4 1/2 2];

start1 = (H1*[startpoints; ones(1,size(startpoints,2))]);
end1 = (H1*[endpoints; ones(1,size(endpoints,2))]);
start2 = (H2*[startpoints; ones(1,size(startpoints,2))]);
end2 = (H2*[endpoints; ones(1,size(endpoints,2))]);
start3 = (H3*[startpoints; ones(1,size(startpoints,2))]);
end3 = (H3*[endpoints; ones(1,size(endpoints,2))]);
start4 = (H4*[startpoints; ones(1,size(startpoints,2))]);
end4 = (H4*[endpoints; ones(1,size(endpoints,2))]);
hold on
subplot(2,4,[1 2 5 6]);
plot([startpoints(1 ,:); endpoints(1 ,:)],[startpoints(2 ,:);...
    endpoints(2 ,:)] , 'b-');
ylim([-1.5 1.5])
axis equal
subplot(2,4,3);
plot([start1(1 ,:); end1(1 ,:)],[start1(2 ,:);...
    end1(2 ,:)] , 'b-');
axis equal
subplot(2,4,4);
plot([start2(1 ,:); end2(1 ,:)],[start2(2 ,:);...
    end2(2 ,:)] , 'b-');
axis equal
subplot(2,4,7);
plot([start3(1 ,:); end3(1 ,:)],[start3(2 ,:);...
    end3(2 ,:)] , 'b-');
axis equal
subplot(2,4,8);
plot([start4(1 ,:); end4(1 ,:)],[start4(2 ,:);...
    end4(2 ,:)] , 'b-');
axis equal
