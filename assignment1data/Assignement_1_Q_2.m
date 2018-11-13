load('compEx1.mat');
two_D = pflat(x2D);
three_D = pflat(x3D);

figure(1)
plot(two_D(1,:),two_D(2,:),'o','MarkerSize',4,'MarkerEdgeColor','red',...
    'MarkerFaceColor','red')
title('Homogeneous coordinates of x2D')

figure(2)
plot3(three_D(1,:),three_D(2,:),three_D(3,:),'o','MarkerSize',4,'MarkerEdgeColor','red',...
    'MarkerFaceColor','red')
title('Homogeneous coordinates of x2D')