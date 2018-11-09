clear all; close all; clc;
x=[1 2 4 5]; 
y=[1 3 4 2]; 
n=length(x); 
ll(1)=1;    
mm(n)=1; 
h=diff(x);  
df=diff(y)./diff(x); 
d(1)=6*(df(1)-1/2)/h(1);  
d(n)=6*(0.5*81^-0.5-df(n-1))/h(n-1); %%%
for j=2:n-1      
    ll(j)=h(j)/(h(j-1)+h(j));     
    mm(j)=h(j-1)/(h(j-1)+h(j));      
    d(j)=6*(df(j)-df(j-1))/(h(j-1)+h(j)); 
end

mm=mm(2:end);  
u=diag(mm,-1); %�����Խ���-1��ʾ�����Խ����·�
r=diag(ll,1);  %�����Խ���1��ʾ�����Խ����Ϸ�
a=diag(2*ones(1,n)); 
A=u+r+a;       %���������ʽ�����Է����� 
M=A\d';   %���Mֵ

syms g 
for j=1:n-1  
    s(j)=M(j)*(x(j+1)-g)^3/(6*h(j))+M(j+1)*((g-x(j))^3/(6*h(j)))+(y(j)-M(j)*h(j)^2/6)*(x(j+1)-g)/h(j)+(y(j+1)-M(j+1)*h(j)^2/6)*(g-x(j))/h(j); 
    disp(s(j));
end
% format rat  %% ������ʽ
for j=1:n-1      
    S(j,:)=sym2poly(s(j));  % ϵ������ת��Ϊ���Ŷ���ʽ
end

