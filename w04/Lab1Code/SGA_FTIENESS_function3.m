function [fitness] = SGA_FTIENESS_function3(x1, x2)

fitness = 21.5 + x1.*sin(4*pi.*x1) + x2.*sin(20*pi.*x2)

end