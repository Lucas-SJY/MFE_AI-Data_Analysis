x = 1;
y = 2;

m = zeros(size(inp));
if(x>=0 & y>=0)
    z = x + y
elseif(x>=0 & y < 0)
    z = x + y*y
elseif(x<0 & y>=0)
    z= x*x+y
elseif(x<0 & y<0)
    z = x*x + y*y
end
