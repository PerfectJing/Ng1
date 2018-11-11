%% 求原始图像和加密图像的水平，垂直，对角三个方向相关系数，并以表格形式显示出来
%% 参数：A原始图像，C加密图像
function all_pxy_show(A, C)
[AX1, AY1] = horizontal_adjacent_pixels(A);
[AX2, AY2] = vertical_adjacent_pixels(A);
[AX3, AY3] = diagonal_adjacent_pixels(A);

[CX1, CY1] = horizontal_adjacent_pixels(C);
[CX2, CY2] = vertical_adjacent_pixels(C);
[CX3, CY3] = diagonal_adjacent_pixels(C);

Apxy1 = coeff(AX1, AY1);
Apxy2 = coeff(AX2, AY2);
Apxy3 = coeff(AX3, AY3);

Cpxy1 = coeff(CX1, CY1);
Cpxy2 = coeff(CX2, CY2);
Cpxy3 = coeff(CX3, CY3);

%% 绘制表格
f = figure;
data = {'水平',num2str(Apxy1),num2str(Cpxy1);'垂直',num2str(Apxy2),num2str(Cpxy2);'对角',num2str(Apxy3),num2str(Cpxy3)};
colnames = {'','原始图像', '加密图像'};
uitable(f, 'Data', data, 'ColumnName', colnames,'Position', [200 200 260 100]);
end