%% homework 7 
%This formula will be used to find the machine epsilon 
%input: Epsi=1 (epsilon)
%output: Epsi true value 
Epsi=1; 
while (Epsi+1>1)
        Epsi=Epsi/2
end
Epsi=Epsi*2;
disp(Epsi)
%% homework 7 part 2 
%This section of  code will be used to try and determine the smallest
%postive value that matlab is able to use  
%inputs: guess= smallest guessed value; Outputs: real=real smallest value 
tic
guess=1
while (guess>0)
    guess=guess/2
end 
disp(guess)
toc
%% testing for hw 8 not to clean 
y(x)=25*(x^3)+-6*(x^2)+7*x-88
%% fuck shit tass bullshit
syms x; syms x2
f(x)=x^3+7*x^2+5*x-18; f(x2)=x2^3+7*x2^2+5*x2-18
subs(f(x),x,2)
subs(f(x2),x2,-1)

