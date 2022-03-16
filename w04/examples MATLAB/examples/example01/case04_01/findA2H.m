num=[11 22 33 44 55 66 77 88]
A=num(1)
B=num(2)
C=num(3)
D=num(4)
E=num(5)
F=num(6)
G=num(7)
H=num(8)
while A-B~=11 || C-D~=22 || E-F~=33|| G-H~=44
rand=randperm(8)
randnum=num(rand) 
A=randnum(1)
B=randnum(2)
C=randnum(3)
D=randnum(4)
E=randnum(5)
F=randnum(6)
G=randnum(7)
H=randnum(8)
end

