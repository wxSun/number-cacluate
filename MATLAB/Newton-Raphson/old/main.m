%主程序
%输出结果为P
clc
clear all
max1=50;%最大迭代次数
tol=1e-4;%解容许精度
epsilon=1e-4;%函数收敛精度
x0=[1 0 0];%初值
[P,iter,err]=newraph(@f327,@f327JF,x0,tol,epsilon,max1)%结果输出
