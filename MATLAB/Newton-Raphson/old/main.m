%������
%������ΪP
clc
clear all
max1=50;%����������
tol=1e-4;%��������
epsilon=1e-4;%������������
x0=[1 0 0];%��ֵ
[P,iter,err]=newraph(@f327,@f327JF,x0,tol,epsilon,max1)%������
