x = -3:0.1:12.1;
y = -3:0.1:12.1;

[X, Y] = meshgrid(x, y);

z = SGA_FITNESS_function2(X, Y);

plot3(x, y, z)