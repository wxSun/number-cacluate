 % ţ��-����ɭ��
function [P, iter, err] = newraph(F, JF, P, tol, epsilon, max1)
% ���룺ţ�٣�����ɭ���������Է����飬
%       ����FΪ�����ķ����Է�����ϵͳ��
%       JFΪ��������ſɱȾ���PΪ�����ֵ��
%       tolΪX�������ݲepsilonΪF�������ݲmax1Ϊ����������
% �����PΪ����õ��ķ�����Ľ⣻iterΪ������������ĵ���������errΪX�ļ������
Y = F(P);
for k = 1: max1
    J = JF(P);
    Q = P - (J\Y')';  % ���þ������������Է�����
    Z = F(Q);
    err = norm(Q-P);
    relerr = err/(norm(Q)+eps);
    P = Q;
    Y = Z;
    iter = k;
    if (err<tol) |(relerr<tol) | (abs(Y)<epsilon)
        break;
    end
end
 



