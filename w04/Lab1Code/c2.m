f = @(xLower)(668.06/xLower)*(1-exLowerp(-0.146843*xLower)) - 40;
xLower = 12;
xUpper = 16;
error = 0.005;
res_Low = (668.06/xLower)*(1-exp(-0.146843*xLower)) - 40;
res_Upper = (668.06/xUpper)*(1-exp(-0.146843*xUpper)) - 40;

while (res_Low * res_Upper < 0)
    x = 0.5*(xUpper + xLower);
    res = (668.06/x)*(1-exp(-0.146843*x)) - 40; %f(c)
    if(res*res_Low < 0)
        xUpper = x;
    else
        xLower = x;
    end
    
    if(abs(xUpper - xLower)< error)
        break;
    end
end

result_x = 0.5*(xUpper + xLower)
    

