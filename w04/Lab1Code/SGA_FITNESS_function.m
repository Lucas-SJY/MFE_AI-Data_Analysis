function [fitness] = SGA_FITNESS_function(x)


fitness = x.*sin(10*pi*x) + 2.0;
end
