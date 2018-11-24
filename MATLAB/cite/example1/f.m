function out =f ( theta )
%F 
%   
%
%
%
%
L2=sqrt(2);L3=sqrt(2);
gamma=pi/2;
p1=sqrt(5);p2=sqrt(5);p3=sqrt(5);
x1=4;x2=0;y2=4;
%
a2=L3*cos(theta)-x1;
b2=L3*sin(theta);
a3=L2*(cos(theta)*cos(gamma)-sin(theta)*sin(gamma))-x2;
b3=L2*(cos(theta)*sin(gamma)+sin(theta)*cos(gamma))-y2;
%
D=2.0*(a2 * b3-b2 * a3);
N1= b3*(p2^2-p1^2-a2^2-b2^2)-b2*(p3^2-p1^2-a3^2-b3^2);
N2=-a3*(p2^2-p1^2-a2^2-b2^2)+a2*(p3^2-p1^2-a3^2-b3^2);
out=N1^2+N2^2-p1^2*D^2;
end

