function summatrix=strange(n,m)
%This function will output a matrix in which the values has the sum of the
%element to the left and above it.
%inputs: n= number of rows; m=number of columns 
%output: summatrix= a matrix with sum value in it
%Ben Wilson Mech 105 January 1/31/17
if nargin<2
    error('not enough arguments')
else
end 
A=zeros(n,m); %creates a matrix to store values in
for k=1:n
    for h=1:m
        if k==1 %sets starting above value 
            A(k,h)=h;
        elseif  h==1
                A(k,h)=k; %sets starting left value
        else 
            A(k,h)= A(k-1,h)+A(k,h-1); %sum of left and above
        end 
    end 
end 
disp(A)