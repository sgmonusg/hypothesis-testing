function diff_btw_two_means_of_paired_sample(pop_m,alpha)
  M = csvread('double_array.csv');
  mat_1=M(:,1);
  mat_2=M(:,2);
  mat_3=mat_1.-mat_2;
  s=sum(mat_3);
  dim=size(mat_1);
  len=(dim(1));
  d_0=s/len;
  sd=(sum((mat_3.-d_0).^2))/(len-1);
  t=(d_0-pop_m)/(sd/(sqrt(len)))
  v=len-1;
  t_alpha = abs(tinv(alpha,(v)))
  men =input(' press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ')
  if men==1
    if (abs(t))>(abs(tinv((alpha/2),(v))))
      disp('hypothesis false')
    else 
      disp('hypothesis true')
    end
  elseif men==2
    if t>t_alpha
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  else
    if t<(-t_alpha)
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  end
end
