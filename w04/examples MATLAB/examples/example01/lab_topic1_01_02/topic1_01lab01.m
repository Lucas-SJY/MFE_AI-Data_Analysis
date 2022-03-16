year=0           %year
account=10000   %origine account balance
while account<900000  %calculate how many years it will take to get 900000
    account=(account+10000)*1.053
    year=year+1
end
disp(['the resulting balance=',num2str(account)]) %indicate the final answer
disp(['the year=',num2str(year)])

    
   
