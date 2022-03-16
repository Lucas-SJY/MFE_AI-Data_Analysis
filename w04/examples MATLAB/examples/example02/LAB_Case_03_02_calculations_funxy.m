% Case 03_02
syms x y f
prompt1='You suppose x = ';
prompt2='and y = ';
x = input(prompt1);
y = input(prompt2);
f=funxy(x,y);
fprintf("The solution to f(x,y) is %.4f.\n",f)

function [z]=funxy(x,y)
if x>=0 && y>=0
    z=x+y;
elseif x>=0 && y<0
    z=x+y.^2;
elseif x<0 && y>=0
    z=x.^2+y;
elseif x<0 && y<0
    z=x.^2+y.^2;
end
end