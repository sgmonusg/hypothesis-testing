function mean_with_variance_unknown(alpha,pop_m)
  M = csvread('single_array.csv');
  dim=size(M);
  len=(dim(1));
  s=sum(M);
  m=s/len;
  v =std(M);
  x=sqrt(len);
  t=(m-pop_m)/(v/x)
  t_alpha = abs(tinv(alpha,len-1))
  men =input(' press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ')
  if men==1
    if (abs(t))>(abs(tinv((alpha/2),(len-1))))
      disp('hypothesis false')
    else 
      disp('hypothesis true')
    end
  elseif men==2
    %disp(t_alpha)
    %disp(t)
    if t>t_alpha
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  else
    %disp(t)
    %disp(-t_alpha)
    if t<(-t_alpha)
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  end
end
