%% 铅钡
%% 正态性检验JB
n_c = size(y,2);  
H = zeros(1,n_c); 
P = zeros(1,n_c);
for i = 1:n_c
    [h,p] = jbtest(y(:,i),0.05);
    H(i)=h;
    P(i)=p;
end
%% 斯皮尔曼相关系数
[r1,p1]=corr(y, 'type' , 'Spearman');
%% 高钾
%% 斯皮尔曼相关系数
[r1,p1]=corr(y, 'type' , 'Spearman');
% 在EXCEL表格中给数据右上角标上显著性符号吧
a=double(p1 < 0.01)  ;% 标记3颗星的位置
b=(p1 < 0.05) .* (p1 > 0.01) ; % 标记2颗星的位置
c=(p1 < 0.1) .* (p1 > 0.05); % % 标记1颗星的位置
