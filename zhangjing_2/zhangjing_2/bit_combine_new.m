%% 将K1中各序列值得第2,4,6,8位，和K2各序列值得第1,3,5,7位提取出来进行整合即可得到图像序列L

function L=bit_combine_new(K1,K2)
L = K1;
for i = 1:2:7
    L = bitset(L,i,bitget(K2,i));
    L = bitset(L,i+1,bitget(K1,i+1));
end