u1=2;u2=1;u3=3;
v1=1;v2=2;v3=2;
x1=4; x2=0;y2=4;
plot([u1 u2 u3 u1], [v1 v2 v3 v1] ,'r');hold on
plot([x2 u2 ],[y2 v2]); hold on
plot([0 u1 ],[0 v1]); hold on
plot([x1 u3 ],[0 v3]); hold on
plot([0 x1 x2],[0 0 y2 ],'bo')
grid on