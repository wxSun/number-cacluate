load('0007-0-1797-IR007-0.mat')
load('0007-1-1772-IR007-1.mat')
load('0007-2-1750-IR007-2.mat')
load('0007-3-1730-IR007-3.mat')
clear X105RPM X106RPM X107RPM X108RPM

disp ----------------------------------------------------------------------------------------------
disp  [   平均值    最大值    最小值     方差     标准差    均方值均   方根值    偏斜度     峭度 ]
m=[    tongjixinxi(X105_DE_time);tongjixinxi(X105_FE_time);tongjixinxi(X105_BA_time);
    tongjixinxi(X106_DE_time);tongjixinxi(X106_FE_time);  tongjixinxi(X106_BA_time);
    tongjixinxi(X107_DE_time);tongjixinxi(X107_FE_time); tongjixinxi(X107_BA_time);
    tongjixinxi(X108_DE_time);tongjixinxi(X108_FE_time);tongjixinxi(X108_BA_time);];
disp(m);
disp ----------------------------------------------------------------------------------------------
