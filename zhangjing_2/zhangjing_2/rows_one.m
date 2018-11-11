%% 将明文图像A按照行优先的顺序转换一维系列L
function L = rows_one(A)
    A = A';
    L = A(:)';
end