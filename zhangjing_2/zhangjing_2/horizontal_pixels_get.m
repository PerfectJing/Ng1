%% 抽取水平方向的n组相邻像素点X=P(x,y)， Y=P(x+1,y)
function [X, Y] = horizontal_pixels_get(A, n)
X = zeros(1, n); Y = zeros(1, n);
[H, W] = size(A);
count = 1; % 计数器
% 从第一个像素点开始
for j = 1:W
    for i = 1:H-1
        if count > n % 抽取的数量达到上限，终止所有循环
            return;
        end
        %X(count),Y(count)是水平方向的一组相邻像素点
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