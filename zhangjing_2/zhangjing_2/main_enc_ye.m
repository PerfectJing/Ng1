clear all;
A=imread('lena.tif');
% imwrite(A,'lena.tif');
[H,W]=size(A);
subplot(421);imshow(A);title('明文图像');

A=double(A);%ye

x1=0.3141592650;
x2=0.4546474849;
x3=0.2425262728;
u=3.9545674321;

[C,Kkey,Pkey,Qkey]=bit_location_zhiL_ye(A,x1,x2,x3,u,H,W);
subplot(422);imshow(uint8(C));title('密文图像');

subplot(423);imhist(uint8(A));title('明文图像灰度直方图');
subplot(424);imhist(uint8(C));title('密文图像灰度直方图');

R=jM_algorithm_new(C,Pkey,Qkey,Kkey,H,W);
subplot(425);imshow(uint8(R));title('解密后的图像');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1+0.1,x2, x3, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(426); imshow(uint8(R));title('改变x1的错误解密图像');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1,x2+0.1, x3, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(427); imshow(uint8(R));title('改变x2的错误解密图像');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1,x2, x3+0.1, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(428); imshow(uint8(R));title('改变x3的错误解密图像');

x = 1:250;y = 1:250;
A = uint8(A); C = uint8(C);
[AX, AY] = horizontal_pixels_get(A, 500);
[CX, CY] = horizontal_pixels_get(C, 500);
figure,
subplot(211); plot(AX, AY,'k.');title('明文相邻像素相关性');
subplot(212); plot(CX, CY,'k.');title('密文相邻像素相关性');
all_pxy_show(A, C);
