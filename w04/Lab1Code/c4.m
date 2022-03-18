
x = -10:0.1:10;
y = -10:0.1:10;

[X,Y] = meshgrid(x, y);

z = SGA_FITNESS_function2(X, Y)

plot3(x, y, z)
