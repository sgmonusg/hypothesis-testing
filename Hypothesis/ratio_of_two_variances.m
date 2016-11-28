function ratio_of_two_variances(alpha)
  M = csvread('double_array.csv');
  mat_1=M(:,1);
  mat_2=M(:,2);
  dim_1=size(mat_1);
  dim_2=size(mat_2);
  len_1=(dim_1(1));
  len_2=(dim_2(1));
  f=var(mat_1)/var(mat_2)
  f_alpha=(fcdf(alpha,(len_1-1),(len_2-1)))
  men =input(' press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ')
  if men==1
    if (abs(f))>fcdf(alpha/2,(len_1-1),(len_2-1))
      disp('hypothesis false')
    else 
      disp('hypothesis true')
    end
  elseif men==2
    if f>f_alpha
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  else
    if f<(-f_alpha)
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  end
end
 
