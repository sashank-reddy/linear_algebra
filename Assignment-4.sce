
disp('T orthogonalise the given vectors using Gram-Schimdt Orthogonalisation in r3')
disp('Enter the matrix A');
//Taking input of Matrix A
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

a = [a11; a21; a31]
b = [a12; a22; a32]
c = [a13; a23; a33]
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
function func(a)
    lam=poly(0,'lam');
    lam=lam
    charmat=a-lam*eye(3,3);
    disp(charmat,"the characteristic matrix is");
    charpoly=poly(a,'lam');
    disp(charpoly,"the characteristic polynomial is:");
    lam=spec(a);
    disp(lam,"the eigen values of A are");
        
endfunction
function[x,lam]=eigenvectors(a)
        [n,m]=size(a);
        lam=spec(a);
        x=[];
        for k=1:3
            B=a-lam(k)*eye(3,3);
            C=B(1:n-1,1:n-1);
            b=-B(1:n-1,n);
            y=C\b;
            y=[y;1];
            y=y/norm(y);
            x=[x y];
                    end
endfunction
disp('Enter the matrix A');
//Taking input of Matrix A
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];
a=A;
disp('A=')
disp(a)
func (a);

[x,lam]=eigenvectors(a)
disp(x,"the eigen vectors of a are");



//power method

disp('Enter the matrix A');
//Taking input of Matrix A
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];

u0=[1, 1, 1]';
disp(u0,"initial vector is")
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




