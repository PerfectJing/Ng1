%% ˮƽ������������
function [X, Y] = horizontal_adjacent_pixels(A)
[H, W] = size(A);
hw = H*W;
X = zeros(1, hw); Y = zeros(1, hw);
count = 1;
% �ӵ�һ�����ص㿪ʼ
for j = 1:W
    for i = 1:H
        %X(count),Y(count)��ˮƽ�����һ���������ص�
        X(count) = A(i,j);
        if i == H 
             Y(count) = A(i-1,j);
        else
             Y(count) = A(i+1,j);
        end
        count = count + 1;
    end
end
end