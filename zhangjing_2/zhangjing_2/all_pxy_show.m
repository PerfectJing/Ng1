%% ��ԭʼͼ��ͼ���ͼ���ˮƽ����ֱ���Խ������������ϵ�������Ա����ʽ��ʾ����
%% ������Aԭʼͼ��C����ͼ��
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

%% ���Ʊ��
f = figure;
data = {'ˮƽ',num2str(Apxy1),num2str(Cpxy1);'��ֱ',num2str(Apxy2),num2str(Cpxy2);'�Խ�',num2str(Apxy3),num2str(Cpxy3)};
colnames = {'','ԭʼͼ��', '����ͼ��'};
uitable(f, 'Data', data, 'ColumnName', colnames,'Position', [200 200 260 100]);
end