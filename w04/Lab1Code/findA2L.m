num=[11, 22, 33, 44, 55, 66, 77, 88];
A=num(1);
B=num(2);
C=num(3);
D=num(4);
E=num(5);
F=num(6);
G=num(7);
H=num(8);
answ = [11, 22, 33, 44, 55, 66, 77, 88];
I = answ(1);
J = answ(2);
K = answ(3);
L = answ(4);
while A-B~=I || C-D~=J || E-F~=K|| G-H~=L
    rand1 = randperm(8);
    rand2 = randperm(8);
    randnum = num(rand1);
    randansw = answ(rand2);
    
    A = randnum(1)
    B = randnum(2)
    C = randnum(3)
    D = randnum(4)
    E = randnum(5)
    F = randnum(6)
    G = randnum(7)
    H = randnum(8)
    
    I = randansw(1)
    J = randansw(2)
    K = randansw(3)
    L = randansw(4)


end