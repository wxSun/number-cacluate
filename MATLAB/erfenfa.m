y=input('y=','s');%������ʽ
y=inline(y);%������������
a=input('a=');%�����������aֵ
b=input('b=');%���������Ҷ�bֵ
eps1=input('eps1=');%����|f(c)|����
eps2=input('eps2=');%����|c-a|����
if y(a)*y(b)>0%�ж����Ҷ˵㺯��ֵ֮��������
    disp('�����ڴ�����~~~')%��������ڴ�����
elseif y(a)*y(b)==0%�ж����Ҷ˵㺯��ֵ֮���Ƿ�Ϊ0
    if y(a)==0%�����Ҷ˵㺯��ֵ֮��Ϊ0
        disp(['x=',num2str(a),',f(x)=0',',k=1'])%������
    else%����
        disp(['x=',num2str(b),',f(x)=0',',k=1'])%������
    end%if����
else%����
        c=(a+b)/2;%��cһ����ʼֵ
        k=1;%��kһ����ʼֵ
    while abs(y(c))>eps1&&abs(c-a)>eps2%������δ�ﵽ����ֵ��ѭ�� 
    if y(c)==0%��c�㺯��ֵΪ0
        break%����ѭ��
    else%����
        if y(a)*y(c)<0%��a��c�㺯��ֵ֮��С��0
            b=c;%b��ֵΪc
        else%����
            a=c;%a��ֵΪc 
        end%if����
        c=(a+b)/2;%c����Ϊa��b���е�
    end%if����
    k=k+1;%k�ۼ�
    end%while����
    disp(['x=',num2str(c,64),',f(x)=',num2str(y(c),64),',k=',num2str(k)])%������
end%if����
