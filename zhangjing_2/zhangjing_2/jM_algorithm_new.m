%%�����㷨
function R=jM_algorithm_new(C,Pkey,Qkey,Kkey,H,W)
 % ��������˳��ת��Ϊһάͼ������
 C=rows_one(C);
 %������
 K1=bitxor(C,Pkey);
 K2=bitxor(C,Qkey);
 
 L=bit_combine_new(K1,K2);
 % ͼ������λ�����ҵ������
 R=inverse_pix_scram(L,Kkey);
  % �������ȵ�˳��ת��ΪH*W����
 R=reshape(R,W,H)';
end