function variance(pop_var,alpha)
  M = csvread('single_array.csv');
  dim=size(M);
  len=(dim(1));
  v=var(M);
  chi=((len-1)*v)/pop_var
  chi_alpha=chi2inv(alpha,(len-1))
  men =input(' press 1 for 2 tailed test \n press 2 for upper tailed test \n press 3 for lower tailed test \n ')
  if men==1
    if abs(chi)>chi2inv((alpha/2),(len-1))
      disp('hypothesis false')
    else 
      disp('hypothesis true')
    end
  elseif men==2
    if chi>chi_alpha
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  else
    if chi<(-chi_alpha)
      disp('hypothesis false')
    else
      disp('hypothesis true')
    end
  end
end
 
