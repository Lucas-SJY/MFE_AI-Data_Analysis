%Since εs=0.5%, the result is correct to at least 2 significant figures
prompt1='You suppose the root is range from ';
prompt2='to ';
x_l = input(prompt1);
x_u = input(prompt2);
[y0]=f(x_u);
[y1]=f((x_u+x_l)/2);
[y2]=f(x_l);
if y0*y2<=0
    while abs(y0)>=0.01 && abs(y2)>=0.01
        if y1<0
            x_u=(x_l+x_u)/2;
            [y0]=f(x_u);
            [y1]=f((x_u+x_l)/2);
        else
            x_l=(x_l+x_u)/2;
            [y0]=f(x_l);
            [y1]=f((x_u+x_l)/2);
        end
    end
    sprintf('The root of f(c) is close to %.2f', x_l)
else
    sprintf('The root of f(c) is not in the range of %d to %d', x_l, x_u)
end

function y=f(c)
    y=668.06/(c)*(1-exp(-0.146843*c))-40;
end