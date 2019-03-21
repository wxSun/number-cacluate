
load('0007-0-1797-B007-0.mat')
load('0007-1-1772-B007-1.mat')
load('0007-2-1750-B007-2.mat')
load('0007-3-1730-B007-3.mat')
clear X118RPM X119RPM X120RPM X121RPM

disp ----------------------------------------------------------------------------------------------
disp  [  波形指标  峰值指标  脉冲指标  裕度指标  峭度指标  ]
n=[    wulianggangzhibiao(X118_DE_time);wulianggangzhibiao(X118_FE_time); wulianggangzhibiao(X118_BA_time);
    wulianggangzhibiao(X119_DE_time);wulianggangzhibiao(X119_FE_time);wulianggangzhibiao(X119_BA_time);
    wulianggangzhibiao(X120_DE_time);wulianggangzhibiao(X120_FE_time) ;wulianggangzhibiao(X120_BA_time);
    wulianggangzhibiao(X121_DE_time);wulianggangzhibiao(X121_FE_time);wulianggangzhibiao(X121_BA_time);];
disp(n);
disp ----------------------------------------------------------------------------------------------