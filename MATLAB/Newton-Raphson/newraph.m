 % 牛顿-拉夫森法
function [P, iter, err] = newraph(F, JF, P, tol, epsilon, max1)
% 输入：牛顿－拉夫森法求解非线性方程组，
%       其中F为待求解的非线性方程组系统；
%       JF为方程组的雅可比矩阵；P为计算初值；
%       tol为X的收敛容差，epsilon为F的收敛容差，max1为最大迭代次数
% 输出：P为计算得到的方程组的解；iter为计算收敛所需的迭代次数；err为X的计算误差
Y = F(P);
for k = 1: max1
    J = JF(P);
    Q = P - (J\Y')';  % 利用矩阵除法求解线性方程组
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
 



