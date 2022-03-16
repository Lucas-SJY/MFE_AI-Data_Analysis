xlower=12
xupper=16

while xupper-xlower>0.005  %approximate error falls below a stopping criterion
    x=(xlower+xupper)./2

    if f(x)<0         %Bisection method
        xlower=xlower
        xupper=x
    end
    
    if f(x)>0        %Bisection method
        xlower=x
        xupper=xupper
    end
    
end

disp(['the final xlower=',num2str(xlower)])  %indicate the final results
disp(['the final xupper=',num2str(xupper)])

