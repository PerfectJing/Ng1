%%ͼ������ֵ�ı���λ������

function [C,Kkey,Pkey,Qkey]=bit_location_zhiL_ye(A,x1,x2,x3,u,m,n)
[L,Kkey]=pix_scram(A,x1);
len=length(L);
Pkey=Logistic_chaotic(x2,u,len);
Qkey=Logistic_chaotic(x3,u,len);

temp=0 % test the running 

%Pkey=floor(mod(Pkey*power(10,8),256));
%Qkey=floor(mod(Qkey*power(10,8),256));

Pkey=mod(floor(Pkey*10^8),256);
Qkey=mod(floor(Qkey*10^8),256);

tic
%����λ�Ľ����滻����תΪʮ���ƾ���
[W,V]=bit_replace_ye(L,Pkey,Qkey);
%���������ȵ�˳��ת��Ϊ������СΪmxn�Ķ�ά����W'��V'
W=reshape(W,n,m)';
V=reshape(V,n,m)';
toc

%�������������õ���������ͼ��C
C=bitxor(W,V);
end
