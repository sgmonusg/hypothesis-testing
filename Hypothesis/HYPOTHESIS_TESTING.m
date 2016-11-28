function HYPOTHESIS_TESTING()
  disp("**************************menu******************************\n")
  disp("          press 1 for HYPOTHESIS TESTING OF MEAN WITH VARIANCE KNOWN\n")
  disp("          press 2 for HYPOTHESIS TESTING OF MEAN WITH VARIANCE UNKNOWN\n")
  disp("          press 3 for HYPOTHESIS TESTING OF CORRELATION COEFFICIENT\n")
  disp("          press 4 for HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES KNOWN\n")
  disp("          press 5 for HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES UNKNOWN BUT EQUAL \n")
  disp("          press 6 for HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES UNKNOWN BUT UNEQUAL\n")
  disp("          press 7 for HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS OF PAIRED SAMPLE\n")
  disp("          press 8 for HYPOTHESIS TESTING FOR A PROPORTION\n")
  disp("          press 9 for HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO BINOMIAL PROPORTIONS\n")
  disp("          press 10 for HYPOTHESIS TESTING FOR THE VARIANCE\n")
  disp("          press 11 for HYPOTHESIS TESTING FOR THE RATIO OF TWO VARIANCES\n")
  disp("  *******************************************************************\n")
  men=input("");
  if men==1
    disp("        HYPOTHESIS TESTING OF MEAN WITH VARIANCE KNOWN\n")
    var=input("ENTER THE VALUE OF STANDARD DEVIATION   ");
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    mean_with_variance_known(alpha , pop_m, var )
  elseif men==2
     disp("       HYPOTHESIS TESTING OF MEAN WITH VARIANCE UNKNOWN\n")
     alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    mean_with_variance_unknown(alpha, pop_m)
  elseif men==3
    disp("        HYPOTHESIS TESTING OF CORRELATION COEFFICIENT\n")
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    correlation_coff(alpha);
  elseif men==4
    disp("        HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES KNOWN\n")
    var_1=input("ENTER THE VALUE OF STANDARD DEVIATION OF FIRST SAMPLE   ");
    var_2=input("ENTER THE VALUE OF STANDARD DEVIATION OF SECOND SAMPLE   ");
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    diff_btw_two_mean_with_variance_known(alpha,pop_m,var_1,var_2)
  elseif men==5
    disp("        HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES UNKNOWN BUT EQUAL \n")
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    diff_btw_two_mean_with_variance_unknown_equal(alpha,pop_m)
  elseif men==6
    disp("        HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS WITH VARIANCES UNKNOWN BUT UNEQUAL\n")
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    diff_btw_two_mean_with_variance_unknown_unequal(alpha,pop_m)
  elseif men==7
     disp("      HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO MEANS OF PAIRED SAMPLE\n")
     alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_m=input("ENTER THE VALUE OF POPULATION MEAN   ");
    diff_btw_two_means_of_paired_sample(pop_m,alpha)
  elseif men==8
    disp("      HYPOTHESIS TESTING FOR A PROPORTION\n")
    p=input("ENTER THE VALUE OF SAMPLE P   ");
    p_0=input("ENTER THE VALUE OF POPULATION MEAN   ");
    n=input("ENTER THE VALUE OF SAMPLE SIZE   ");
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    proportion(p,p_0,n,alpha)
   elseif men==9
    disp("     HYPOTHESIS TESTING OF DIFFERENCE BETWEEN TWO BINOMIAL PROPORTIONS\n")
    p_1=input("ENTER THE VALUE OF SAMPLE_1 P   ");
    p_2=input("ENTER THE VALUE OF SAMPLE_2 P   ");
    n_1=input("ENTER THE VALUE OF SAMPLE_1 SIZE   ");
    n_2=input("ENTER THE VALUE OF SAMPLE_2 SIZE   ");
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    diff_btw_proportion(p_1,p_2,n_1,n_2,alpha)
  elseif men==10
    disp("     HYPOTHESIS TESTING FOR THE VARIANCE\n")
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    pop_var=input("ENTER THE VALUE OF POPULATION VARIANCE   ");
    variance(pop_var,alpha)
  elseif men==11
    disp("     HYPOTHESIS TESTING FOR THE RATIO OF TWO VARIANCES\n")
    alpha=input("ENTER THE VALUE OF ALPHA   ");
    ratio_of_two_variances(alpha)
  end  
end