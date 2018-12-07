theta=2.5139;
x1=5.0;x2=0.0;y2=6.0;
L2=3.0*sqrt(2.0);L3=3.0;
gamma=pi/4;
p1=5.0;p2=5.0;p3=3.0;
%
a2=L3.*cos(theta)-x1;
b2=L3.*sin(theta);
a3=L2.*(cos(theta).*cos(gamma)-sin(theta).*sin(gamma))-x2;
b3=L2.*(cos(theta).*sin(gamma)+sin(theta).*cos(gamma))-y2;
%
D=2.0.*(a2 .* b3-b2 .* a3);
N1= b3.*(p2.^2-p1.^2-a2.^2-b2.^2)-b2.*(p3.^2-p1.^2-a3.^2-b3.^2);
N2=-a3.*(p2.^2-p1.^2-a2.^2-b2.^2)+a2.*(p3.^2-p1.^2-a3.^2-b3.^2);
%
x=N1./D; y=N2./D;
%
u1=x;
u2=x+L2.*(cos(theta).*cos(gamma)-sin(theta).*sin(gamma));
u3=x+L3*cos(theta);
v1=y;
v2=y+L2.*(cos(theta).*sin(gamma)+sin(theta).*cos(gamma));
v3=y+L3.*sin(theta);
plot([u1 u2 u3 u1], [v1 v2 v3 v1] ,'r');hold on
plot([x2 u2 ],[y2 v2]); hold on
plot([0 u1 ],[0 v1]); hold on
plot([x1 u3 ],[0 v3]); hold on
plot([0 x1 x2],[0 0 y2 ],'bo')
grid on