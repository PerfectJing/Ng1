%% 相邻像素相关系数
function pxy = coeff(X, Y)
    N = length(X);
    argx = sum(X)/N; 
    argy = sum(Y)/N;
    Dx = sum((X-argx).^2)/N;
    Dy = sum((Y-argy).^2)/N;
    convxy = sum((X-argx).*(Y-argy))/N;
    pxy = convxy/(sqrt(Dx)*sqrt(Dy));
end