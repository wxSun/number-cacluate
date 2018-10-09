y=input('y=','s');%输入表达式
y=inline(y);%构造内联函数
a=input('a=');%输入区间左端a值
b=input('b=');%输入区间右端b值
eps1=input('eps1=');%输入|f(c)|精度
eps2=input('eps2=');%输入|c-a|精度
if y(a)*y(b)>0%判断左右端点函数值之积的正负
    disp('根不在此区间~~~')%输出根不在此区间
elseif y(a)*y(b)==0%判断左右端点函数值之积是否为0
    if y(a)==0%若左右端点函数值之积为0
        disp(['x=',num2str(a),',f(x)=0',',k=1'])%输出结果
    else%否则
        disp(['x=',num2str(b),',f(x)=0',',k=1'])%输出结果
    end%if结束
else%否则
        c=(a+b)/2;%给c一个初始值
        k=1;%给k一个初始值
    while abs(y(c))>eps1&&abs(c-a)>eps2%若精度未达到给定值，循环 
    if y(c)==0%若c点函数值为0
        break%跳出循环
    else%否则
        if y(a)*y(c)<0%若a与c点函数值之积小于0
            b=c;%b赋值为c
        else%否则
            a=c;%a赋值为c 
        end%if结束
        c=(a+b)/2;%c更新为a和b的中点
    end%if结束
    k=k+1;%k累加
    end%while结束
    disp(['x=',num2str(c,64),',f(x)=',num2str(y(c),64),',k=',num2str(k)])%输出结果
end%if结束
