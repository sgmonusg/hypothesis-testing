function diff_btw_two_mean_with_variance_unknown_unequal(alpha,pop_m)
  M = csvread("double_array.csv");
  mat_1=M(:,1);
  mat_2=M(:,2);
  dim_1=size(mat_1);
  dim_2=size(mat_2);
  len_1=(dim_1(1));
  len_2=(dim_2(1));
  s_1=sum(mat_1);
  m_1=s_1/len_1;
  s_2=sum(mat_2);
  m_2=s_2/len_2;
  v_1 =std(mat_1);
  v_2 = std(mat_2);
  t=(m_1-m_2)-pop_m;
  c=sqrt(((v_1.^2)/len_1)+((v_2.^2)/len_2));
  t=t/c
  c=((v_1.^2)/len_1)+((v_2.^2)/len_2).^2;
  c_1=(((v_1.^2)/len_1).^2)/(len_1-1)+(((v_2.^2)/len_2).^2)/(len_2-1);
  v=c/c_1;
  t_alpha = abs(tinv(alpha,v))
  men =input(" press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ")
  if men==1
    if (abs(t))>(abs(tinv((alpha/2),(v))))
      disp("hypothesis false")
    else 
      disp("hypothesis true")
    end
  elseif men==2
    %disp(t_alpha)
    %disp(t)
    if t>t_alpha
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  else
    %disp(t)
    %disp(-t_alpha)
    if t<(-t_alpha)
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  end
end
