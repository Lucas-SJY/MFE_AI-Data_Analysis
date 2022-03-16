num=[11 11 22 22 33 33 44 44 55 55 66 66 77 77 88 88]
A1=num(1)
B1=num(2)
ans=[0 11 22 33 44 55 66 77 88 99]
C1=ans(1)
rand1=randperm(16)
rand2=randperm(10)
randnum=num(rand1) 
randans=ans(rand2) 
A1=randnum(1)
B1=randnum(2)
C1=randans(1)

while A1-B1~=C1
rand1=randperm(16)
rand2=randperm(10)
randnum=num(rand1) 
randans=ans(rand2) 
A1=randnum(1)
B1=randnum(2)
C1=randans(1)
end




