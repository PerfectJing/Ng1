%% ��K1�и�����ֵ�õ�2,4,6,8λ����K2������ֵ�õ�1,3,5,7λ��ȡ�����������ϼ��ɵõ�ͼ������L

function L=bit_combine_new(K1,K2)
L = K1;
for i = 1:2:7
    L = bitset(L,i,bitget(K2,i));
    L = bitset(L,i+1,bitget(K1,i+1));
end