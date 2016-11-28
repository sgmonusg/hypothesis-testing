function proportion(p,p_0,n,alpha)
  z=(p-p_0)/(sqrt(((p_0)*(1-p_0)/n)))
  z_alpha=normcdf(alpha)
  men =input(' press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ')
  if men==1
    if abs(z)>(normcdf(alpha/2))
      disp('hypothesis false')
    else 
      disp('hypothesis true')
    end
  elseif men==2
    if z>z_alpha
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  else
    if z<(-z_alpha)
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  end
end


 
