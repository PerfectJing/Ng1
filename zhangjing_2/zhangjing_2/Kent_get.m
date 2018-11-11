%图像像素位置的置乱(step1,step2)
function[a,t]=Kent_get(L)
[H,W]=size(L);
hw=H*W;
elem_sum=sum(sum(L));%像素值总和
avg=elem_sum/hw;
a=mod(elem_sum*100,hw)/hw;
%t=H+W+mod(avg*power(10,8),H+W); %ye 
t=H+W+mod(floor(avg*10^8),H+W);
end

