%case 02
syms x y f
f=SGA_FITNESS_function(x,y);
fsurf(f, [-10 10 -10 10],'ShowContours','on')
title('f(x)=(sin(x)/(x))*(sin(y)/(y))');
grid on
axis on
axis([-10 10 -10 10 -0.4 1])
xlabel('x')
ylabel('y')
zlabel('z')

function [fitness]=SGA_FITNESS_function(x,y)
%SGA_FITNESS_function begin
%User can design their own fitness function here
%as a standard matlab function

fitness=(sin(x)./(x+eps)).*(sin(y)./(y+eps));

%SGA_FITNESS_function end
end