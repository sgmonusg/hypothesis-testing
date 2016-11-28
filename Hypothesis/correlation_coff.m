function correlation_coff(alpha)
  M = csvread("double_array.csv");
  mat_1=M(:,1);
  mat_2=M(:,2);
  dim=size(mat_1);
  len=(dim(1));
  r=corrcoef(mat_1,mat_2);
  t=(r*(sqrt(len-2))/(sqrt((1-r.^2))))
  v=len-2;
  t_alpha = abs(tinv(alpha,(v)))
  men =input(" press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ")
  if men==1
    if (abs(t))>(abs(tinv((alpha/2),(v))))
      disp("hypothesis false")
    else 
      disp("hypothesis true")
    end
  elseif men==2
    if t>t_alpha
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  else
    if t<(-t_alpha)
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  end
end
