%图像像素的位置的置乱（step3）
function K=kent_yishe_ye(x1,a,t,n) %n为像素点个数
K=zeros(1,n);
for i=1:t
    if x1>=0 && x1<=a
        x1=x1/a;
    elseif x1>a && x1<=1
        x1=(1-x1)/(1-a);
    end
end

K(1)=x1;
for i=1:n-1
    if K(i)>=0 && K(i)<=a
        K(i+1)=K(i)/a;
    elseif K(i)>a && K(i)<=1
        K(i+1)=(1-K(i))/(1-a);
    end
end
end