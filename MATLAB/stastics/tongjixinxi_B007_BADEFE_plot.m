
load('0007-0-1797-B007-0.mat')
load('0007-1-1772-B007-1.mat')
load('0007-2-1750-B007-2.mat')
load('0007-3-1730-B007-3.mat')
clear X118RPM X119RPM X120RPM X121RPM

disp ----------------------------------------------------------------------------------------------
disp  [   平均值    最大值    最小值     方差     标准差    均方值均   方根值    偏斜度     峭度 ]
m=[    tongjixinxi(X118_DE_time);tongjixinxi(X118_FE_time);tongjixinxi(X118_BA_time);
    tongjixinxi(X119_DE_time);tongjixinxi(X119_FE_time);  tongjixinxi(X119_BA_time);
    tongjixinxi(X120_DE_time);tongjixinxi(X120_FE_time); tongjixinxi(X120_BA_time);
    tongjixinxi(X121_DE_time);tongjixinxi(X121_FE_time);tongjixinxi(X121_BA_time);];
disp(m);
disp ----------------------------------------------------------------------------------------------
