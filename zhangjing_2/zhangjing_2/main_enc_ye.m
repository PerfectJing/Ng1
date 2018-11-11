clear all;
A=imread('lena.tif');
% imwrite(A,'lena.tif');
[H,W]=size(A);
subplot(421);imshow(A);title('����ͼ��');

A=double(A);%ye

x1=0.3141592650;
x2=0.4546474849;
x3=0.2425262728;
u=3.9545674321;

[C,Kkey,Pkey,Qkey]=bit_location_zhiL_ye(A,x1,x2,x3,u,H,W);
subplot(422);imshow(uint8(C));title('����ͼ��');

subplot(423);imhist(uint8(A));title('����ͼ��Ҷ�ֱ��ͼ');
subplot(424);imhist(uint8(C));title('����ͼ��Ҷ�ֱ��ͼ');

R=jM_algorithm_new(C,Pkey,Qkey,Kkey,H,W);
subplot(425);imshow(uint8(R));title('���ܺ��ͼ��');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1+0.1,x2, x3, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(426); imshow(uint8(R));title('�ı�x1�Ĵ������ͼ��');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1,x2+0.1, x3, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(427); imshow(uint8(R));title('�ı�x2�Ĵ������ͼ��');

[~, Kkey, Pkey, Qkey] = bit_location_zhiL_ye(A,x1,x2, x3+0.1, u, H, W);
R = jM_algorithm_new(C, Pkey, Qkey, Kkey, H, W);
subplot(428); imshow(uint8(R));title('�ı�x3�Ĵ������ͼ��');

x = 1:250;y = 1:250;
A = uint8(A); C = uint8(C);
[AX, AY] = horizontal_pixels_get(A, 500);
[CX, CY] = horizontal_pixels_get(C, 500);
figure,
subplot(211); plot(AX, AY,'k.');title('�����������������');
subplot(212); plot(CX, CY,'k.');title('�����������������');
all_pxy_show(A, C);
