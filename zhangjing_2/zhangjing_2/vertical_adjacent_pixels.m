%% ��ֱ������������
function [X, Y] = vertical_adjacent_pixels(A)
[H, W] = size(A);
hw = H*W;
X = zeros(1, hw); Y = zeros(1, hw);
count = 1;
% �ӵ�һ�����ص㿪ʼ
for i = 1:H
   for j = 1:W
       %X(count),Y(count)�Ǵ�ֱ�����һ���������ص�
        X(count) = A(i,j);
        if j==H
             Y(count) = A(i,j-1);
        else
             Y(count) = A(i,j+1);
        end
        count = count + 1; 
   end
end
end