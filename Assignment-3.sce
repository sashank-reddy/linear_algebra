A=[1 -2;5 1;6 3];
disp(A, 'A=');
b=[1;2;3];
disp(b, 'b=');
x=(A'*A)\ (A'*b);
disp (x, 'x=');
C=x(1,1);
D=x(2,1);
disp(C, 'C=');
disp(D, 'D=');
disp('The line of best fit is :');
disp('t',D,'+',C,'b=');