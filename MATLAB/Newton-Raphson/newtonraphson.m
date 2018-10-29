x=[1 0 0]';
A=[2*x(1),2*x(2),2*x(3);4*x(1),2*x(2),-4; 6*x(1),-4,2*x(3)];
b=(-1)*[f1(x(1),x(2),x(3)),f2(x(1),x(2),x(3)),f3(x(1),x(2),x(3))]';
delta_x=A\b;
dbelta= 0.0001; % ¾«¶ÈÖµ
while ((abs(delta_x(1))|abs(delta_x(2))|abs(delta_x(3)))>delta)
      x=x+delta_x;
      A=[2*x(1),2*x(2),2*x(3);4*x(1),2*x(2),-4; 6*x(1),-4,2*x(3)];
      b=(-1)*[f1(x(1),x(2),x(3)),f2(x(1),x(2),x(3)),f3(x(1),x(2),x(3))]';
      delta_x=A\b;
end
x,delta_x;