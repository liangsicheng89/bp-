function [MIX_train,MIX_test,DATA_train,DATA_test]=online_dataproduce()
%提取数据的输入、输出
data1=xlsread('data.xlsx',1);data2=xlsread('data.xlsx',2);
% data3=xlsread('data.xlsx',3);data3 = fillmissing(data3, 'linear', 1, 'EndValues', 'nearest');
data=[data2 data1];
%% 转变结束
n=floor(0.8*size(data,1));order=randperm(size(data,1));
MIX_train=data(order(1:n),1:end-1)';%训练集输入
DATA_train=data(order(1:n),end)';%训练集输出

MIX_test=data(order(n+1:end),1:end-1)';%测试集输入
DATA_test=data(order(n+1:end),end)';%测试集输出
end