%Logistic混沌系统
%x初始值,u控制参数,n迭代次数
function Ls=Logistic_chaotic(x,u,n)
Ls=zeros(1,n);
for i=1:501 %舍去前500次
    x=u*x*(1-x);
end
Ls(1)=x;
for i=1:n-1
    Ls(i+1)=u*Ls(i)*(1-Ls(i));
end
end