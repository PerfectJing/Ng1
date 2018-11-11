%%解密算法
function R=jM_algorithm_new(C,Pkey,Qkey,Kkey,H,W)
 % 按行优先顺序转化为一维图像序列
 C=rows_one(C);
 %异或操作
 K1=bitxor(C,Pkey);
 K2=bitxor(C,Qkey);
 
 L=bit_combine_new(K1,K2);
 % 图像像素位置置乱的逆过程
 R=inverse_pix_scram(L,Kkey);
  % 按行优先的顺序转化为H*W矩阵
 R=reshape(R,W,H)';
end