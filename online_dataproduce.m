function [MIX_train,MIX_test,DATA_train,DATA_test]=online_dataproduce()
%��ȡ���ݵ����롢���
data1=xlsread('data.xlsx',1);data2=xlsread('data.xlsx',2);
% data3=xlsread('data.xlsx',3);data3 = fillmissing(data3, 'linear', 1, 'EndValues', 'nearest');
data=[data2 data1];
%% ת�����
n=floor(0.8*size(data,1));order=randperm(size(data,1));
MIX_train=data(order(1:n),1:end-1)';%ѵ��������
DATA_train=data(order(1:n),end)';%ѵ�������

MIX_test=data(order(n+1:end),1:end-1)';%���Լ�����
DATA_test=data(order(n+1:end),end)';%���Լ����
end