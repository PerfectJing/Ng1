%% 用L中各序列值得二进制形式的第1、3、5、7位来替换P中该序列值二进制形式的第1、3、5、7位
%% 再用L中像素点的二进制形式的第2、4、6、8位开替换Q中该序列值二进制形式的第2、4、6、8位。
%% 最后将结果转成值为十进制的矩阵
function[W,V]=bit_replace_ye(L,P,Q)
W=P;V=Q;
for i=1:2:7
W=bitset(W,i,bitget(L,i));
V=bitset(V,i+1,bitget(L,i+1));
end