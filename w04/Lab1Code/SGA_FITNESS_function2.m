function [fitness] = SGA_FITNESS_function2(x, y)

fitness = (sin(x)./(x+eps)).*(sin(y)./(y+eps));

end