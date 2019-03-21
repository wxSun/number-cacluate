
load('0007-0-1797-IR007-0.mat')
load('0007-1-1772-IR007-1.mat')
load('0007-2-1750-IR007-2.mat')
load('0007-3-1730-IR007-3.mat')
clear X105RPM X106RPM X107RPM X108RPM

disp ----------------------------------------------------------------------------------------------
disp  [  波形指标  峰值指标  脉冲指标  裕度指标  峭度指标  ]
n=[    wulianggangzhibiao(X105_DE_time);wulianggangzhibiao(X105_FE_time); wulianggangzhibiao(X105_BA_time);
    wulianggangzhibiao(X106_DE_time);wulianggangzhibiao(X106_FE_time);wulianggangzhibiao(X106_BA_time);
    wulianggangzhibiao(X107_DE_time);wulianggangzhibiao(X107_FE_time) ;wulianggangzhibiao(X107_BA_time);
    wulianggangzhibiao(X108_DE_time);wulianggangzhibiao(X108_FE_time);wulianggangzhibiao(X108_BA_time);];
disp(n);
disp ----------------------------------------------------------------------------------------------