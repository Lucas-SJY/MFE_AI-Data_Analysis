A=[3 -6 2;2 8 3;1 -2 5];
B=[6 9 -1;7 5 1;-5 9 10];
C=[-7 -5 2;10 6 1;3 -9 8];
% a):
AB=A*B;
BA=B*A;

% b):
x=(A*B)*C;
y=A*(B*C);
if x==y
    fprintf("The distributive property exists.\n")
else
    fprintf("The distributive property does not exist.\n")
end

% c):
Z=A^3;
W=Z';
fprintf("A^3 =[%d %d %d\n      %d %d %d\n      %d %d %d]\n",W)