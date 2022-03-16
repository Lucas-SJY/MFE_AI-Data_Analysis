% Case 03-01
x1=-2;
x2=0;
x3=1;
x4=2;

y1=y(x1);
y2=y(x2);
y3=y(x3);
y4=y(x4);

function [f]=y(x)
if x>=1 
    f=log(1/(1-x));
    fprintf('When x=%d, there is no solution.\n',x)
else
    f=log(1/(1-x));
    fprintf("When x=%d, y(x)=%.4f.\n",x,f)
end
end