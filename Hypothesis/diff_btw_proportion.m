function diff_btw_proportion(p_1,p_2,n_1,n_2,alpha)
  p=(((n_1*p_1)+(n_2*p_2))/(n_1+n_2));
  z=((p_1-p_2)/sqrt(((p)*(1-p)*((1/n_1)+(1/n_2)))))
  z_alpha = normcdf(alpha)
  men =input(" press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ")
  if men==1
    if abs(z)>normcdf(alpha/2)
      disp("hypothesis false")
    else 
      disp("hypothesis true")
    end
  elseif men==2
    if z>z_alpha
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  else
    if z<(-z_alpha)
      disp("hypothesis false")
    else
      disp("hypothesis true")
    end
  end
end