%case 01
x=-1:0.01:2;
f_x=SGA_FITNESS_function(x);
plot(x,f_x)
title('f(x)=x*sin(10*pi*x)+2.0');
grid on
axis on
axis([-1 2 0 4])
xlabel('x')
ylabel('f(x)')

function [fitness]=SGA_FITNESS_function(x)
%SGA_FITNESS_function begin
%User can design their own fitness function here
%as a standard matlab function

fitness=x.*sin(10.*pi.*x)+2.0;

%SGA_FITNESS_function end
end