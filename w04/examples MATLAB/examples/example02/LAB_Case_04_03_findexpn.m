prompt='How many combinations you want to get?\n';
x=input(prompt);
fprintf('The combinations are:\n')
for i=1:x
    p=randperm(8,1);
    A=p(1);
    p=randperm(8,1);
    B=p(1);
    q=randperm(10,1);
    C=q(1);
    if C==10
       C=C-10;
    else
       C=C;
    end
    while (A-B~=C)
    p=randperm(8,1);
    A=p(1);
    p=randperm(8,1);
    B=p(1);
    q=randperm(10,1);
    C=q(1);
    if C==10
        C=C-10;
    else
        C=C;
    end
    end
    A=10*A+A;
    B=10*B+B;
    C=10*C+C;
    fprintf('(%d, %d, %d),\n',A,B,C)
end