x=0:0.01:100
y=(668.06./x).*(1-exp(-0.146843*x))-40
figure
plot(x,y)
title('y=(668.06./x).*(1-exp(-0.146843*x))-40')
xlabel('x')
ylabel('y=(668.06./x).*(1-exp(-0.146843*x))-40')
