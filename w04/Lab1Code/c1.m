deposit = 10000;
year = 0;
while deposit < 900000
    year = year + 1;
    deposit = deposit + 10000;
    deposit = deposit +deposit*(0.053);
end
disp(year)
disp(deposit)