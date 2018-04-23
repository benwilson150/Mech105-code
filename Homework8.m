%% Homework 8 Ben Wilson
% This formula will be used to find the third order taylor series
% Expansions and the true percent relative error. for this problem we will use numar=3 and x =1   
%inputs: x= value approximation; numar= number of iterations; h= step size;
%y=f(x); 
%There will also be two arrays but after
%outputs: err= true realtive error; nulor= array of taylor series;
%true= actual value approximation 
% taylor point derivative to n-1 power for fx*h^n-1/n-1 factorial 
x=1;
syms x; 
numar=input('how many terms');
h=input('whats the step size');
y(x)=25*(x^(3))-6*(x^(2))+7*x-88;% function 
nulor=sym([]); %makes the matrix able to hold symbolic expressions
for po=1:numar %loop for how many taylor series shits there are 
    sstep=(diff(y,(po-1))); %derivative to n type 
    final=sstep*(h^(po-1))/(factorial(po-1));% taylor expansion stuff
    nulor(po)=final %puts value in matrix nulor 
end
value=input('what is x');
nulorwval=sum(subs(nulor,x,value))% takes the sum of the taylor series at value, value
true=y(3)% actual value 
err=(abs((nulorwval-true)/true))% calculates error of the taylor series 
%% homework part 2 
% use this section to find the difference approximations of y(x). you
% gotta do foreward backward and centered 
%inputs y(x) same as before, h2= step size; x2=new x var, true2=true
%value 
val=input('what is the starting value');x2=0;
syms x2;
y(x2)=25*(x2^(3))-6*(x2^(2))+7*x2-88; h2=input('whats the step size');
fnosol=((y(x2+h2)-y(x2))/h2); true2=(diff(y,1));
bnosol=((y(x2)-(y(x2-h2)))/h2); cnosol=((y(x2+h2)-(y(x2-h2))/2*h2));
fsol=(subs(fnosol,x2,val)); bsol=(subs(bnosol,x2,val)); csol=(subs(cnosol,x2,val));
truesol=(subs(true2,x2,val));
errf=((fsol-truesol)/truesol);errb=((bsol-truesol)/truesol);errc=((csol-truesol)/truesol);
disp(errc) 
disp(errb)
disp(errf)