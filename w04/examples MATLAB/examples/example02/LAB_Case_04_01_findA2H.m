p=randperm(8);
a=p(1);
b=p(2);
c=p(3);
d=p(4);
e=p(5);
f=p(6);
g=p(7);
h=p(8);
while (a-b~=1)||(c-d~=2)||(e-f~=3)||(g-h~=4)
    p=randperm(8);
    a=p(1);
    b=p(2);
    c=p(3);
    d=p(4);
    e=p(5);
    f=p(6);
    g=p(7);
    h=p(8);
end
A=a*10+a;
B=b*10+b;
C=c*10+c;
D=d*10+d;
E=e*10+e;
F=f*10+f;
G=g*10+g;
H=h*10+h;
fprintf('A= %d, B= %d, C= %d, D= %d, E= %d, F= %d, G= %d, H= %d.\n',A,B,C,D,E,F,G,H)