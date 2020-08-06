function y=make_label(x)
%% ¼ÆËãÀà±ð
for i=1:length(x)
if x(i)>=0&&x(i)<=0.2
   y(i)=3;
elseif x(i)<=0.3
  y(i)=2;
else
   y(i)=1; 
    
end
end

end