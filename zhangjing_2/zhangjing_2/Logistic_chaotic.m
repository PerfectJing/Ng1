%Logistic����ϵͳ
%x��ʼֵ,u���Ʋ���,n��������
function Ls=Logistic_chaotic(x,u,n)
Ls=zeros(1,n);
for i=1:501 %��ȥǰ500��
    x=u*x*(1-x);
end
Ls(1)=x;
for i=1:n-1
    Ls(i+1)=u*Ls(i)*(1-Ls(i));
end
end