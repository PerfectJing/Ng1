%%图像像素值的比特位置置乱

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
%进行位的交叉替换，并转为十进制矩阵
[W,V]=bit_replace_ye(L,Pkey,Qkey);
%按照行优先的顺序转化为两个大小为mxn的二维矩阵W'和V'
W=reshape(W,n,m)';
V=reshape(V,n,m)';
toc

%进行异或操作，得到最终密文图像C
C=bitxor(W,V);
end
