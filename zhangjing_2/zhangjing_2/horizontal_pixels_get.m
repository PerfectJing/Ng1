%% ��ȡˮƽ�����n���������ص�X=P(x,y)�� Y=P(x+1,y)
function [X, Y] = horizontal_pixels_get(A, n)
X = zeros(1, n); Y = zeros(1, n);
[H, W] = size(A);
count = 1; % ������
% �ӵ�һ�����ص㿪ʼ
for j = 1:W
    for i = 1:H-1
        if count > n % ��ȡ�������ﵽ���ޣ���ֹ����ѭ��
            return;
        end
        %X(count),Y(count)��ˮƽ�����һ���������ص�
        X(count) = A(i,j);
        if i == H &&  j < H
             Y(count) = A(1,j+1);
        elseif i == H &&  j == H
             Y(count) = A(1,1);
        else
             Y(count) = A(i+1,j);
        end
        count = count + 1;
    end
end
end