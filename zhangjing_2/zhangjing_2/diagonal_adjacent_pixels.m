%% 对角方向相邻像素
function [X, Y] = diagonal_adjacent_pixels(A)
[H, W] = size(A);
hw = H*W;
X = zeros(1, hw); Y = zeros(1, hw);
count = 1;
% 从第一个像素点开始
% 从第一个像素点开始
for i = 1:H
   for j = 1:W
       %X(count),Y(count)是对角方向的一组相邻像素点
        X(count) = A(i,j);
        if i==H && j==W
             Y(count) = A(i-1,j-1);
        elseif i==H && j<W
            Y(count) = A(i-1,j+1);
        elseif i<H && j==W
            Y(count) = A(i+1,j-1);  
        else
             Y(count) = A(i+1,j+1);
        end
        count = count + 1; 
   end
end