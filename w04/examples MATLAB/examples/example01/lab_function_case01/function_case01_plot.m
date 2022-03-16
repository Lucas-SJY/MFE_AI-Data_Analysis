x=-1:0.01:2
y=SGA_FITNESS_FUNCTION(x)
plot(x,y)
xlabel('x')
ylabel('x.*sin(10*pi*x)+2.0')
grid on