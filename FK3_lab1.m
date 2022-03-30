%this program simulate the electrical field due to a point charge situated
%in a quadrant in the XY plane, while the X and Y axies are covered by an
%infinitly long grounded conductor
inX = 1; %input
inY = 1;
inq = 10; % make it big so the graph dont look small
PointX = [inX -inX -inX inX];
PointY = [inY inY -inY -inY];
q = [inq -inq inq -inq];

GraphEField(PointX,PointY,q,0.1)
title('method of images quadruple')

%function to graph Electric field given postion and charge
function GraphEField(Px,Py,q,s)
    syms x y EP
    
    %domain to plot 
    L = max(max(abs(Px),abs(Py)))+3;
    %initialize EP
    EP= q(1)/sqrt((x-Px(1))^2+(y-Py(1))^2);
    %loop until done
    for i = 2:length(Px)
       EP = EP + q(i)/sqrt((x-Px(i))^2+(y-Py(i))^2);
    end
    
    K =10;
    % take the gradient of electric potential
    %scaled with k to enlarge the vectors so it is visable
    E = -K*gradient(EP,[x,y]);
    
    %only graph the first quadrant
    [X,Y] = meshgrid(-L:s:L);
    %convert simbolic electric field into funtion handle
    m1 = matlabFunction(E(1),'vars',[x y]);
    m2 = matlabFunction(E(2),'vars',[x y]);
    Ex = m1(X,Y);
    Ey = m2(X,Y);
    
    %rescale
    R = sqrt(Ex.^2+Ey.^2+300*sqrt(max(q)*abs(min(q))));
    ex = Ex./R;
    ey = Ey./R;
    
    % to get either quiver plot or streamslice plot, commomt out the other
    h = quiver(X,Y,ex,ey);
    %hold on 
    k = streamslice(X,Y,ex,ey);
    set(h, 'AutoScale', 'on')
    set(h, 'maxheadsize', 0.5)
    set(h, 'AutoScaleFactor', 0.7)
    set(h, 'Color',[0.5,0.9,0.8])

end