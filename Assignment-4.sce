
disp('T orthogonalise the given vectors using Gram-Schimdt Orthogonalisation in r3')
a = [1; 0; 1]
b = [1; 0; 0]
c = [2; 1; 1]
disp(c,'c= ',b,'b= ',a,'a= ')
disp('Let q1=a/||a||')
q1 = a
disp('q2 = b - ((b.q1)/(q1.q1))*q1')
a1 = b'*q1
a2 = q1'*q1
q2 = b - (a1/a2)*q1
disp('q2 = c  -  ((c.q1)/(q1.q1))*q1  -  ((c.q2)/(q2.q2))*q2')
a1 = c'*q1
a2 = q1'*q1
a3 = c'*q2
a4 = q2'*q2
q3 = c - (a1/a2)*q1 - (a3/a4)*q2
disp('Thus an orthogonal basis is: ')
disp(q3,q2,q1)
disp('Normalizing q1,a2&q3 we get')
s1 = sqrt(q1(1,1)^2 + q1(2,1)^2 + q1(3,1)^2)
s2 = sqrt(q2(1,1)^2 + q2(2,1)^2 + q2(3,1)^2)
s3 = sqrt(q3(1,1)^2 + q3(2,1)^2 + q3(3,1)^2)
disp(q3/s3,q2/s2,q1/s1)

disp('To find Eigen values and Eigen vectors of any square matrix of size 3*3')
disp('A=')
a = [8 -6 2;-6 7 -4;2 -4 3]
disp(a)
disp('Eigen values of A are: ')
disp(spec(a))
[c,d] = spec(a)
disp('Eigen Vectors of A are: ')
disp(c)
disp('To find the largest Eigen value')
A=input("enter the matrix ")

u0=input("enter the initial vector [AS COLUMN]")
v=A*u0;
a=max(u0); 

while abs(max(v)-a)>0.002 
    disp(v,"current eigen vector is") 
    a=max(v); 
    disp(a,"current eigen velue is") 
    u0=v/max(v); 
    v=A*u0; 
end 
format('v',4);
disp(max(v),'the largest eigen value is:')
format('v',5) 
disp(u0,'the corresponding eigen vector is:')



