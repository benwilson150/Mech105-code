 function [root,fx,ea,iter]=falseposition(func,xl,xu,es,maxiter)
%this function will be used for root estimation using the false position
%theorum, this uses a sloped line that connects the two guesses and then
%reevaluating the formula based on the point found. 
%inputs
%func=function evlated in terms of x in form @(x) function; xl=initial guess; xu=second guess;
%es=desired relative error (if not given use 0.0001%); maxiter= max number
%of iterations preformed (or resort to 200)
%outputs  root - the estimated root location; fx - the function evaluated at the root location;
%ea - the approximate relative error (%); iter - how many iterations were performed
format long;
x1=xl; x2=xu; iter=0; %defining vaiables for later use 
posorneg = func(xl) * func(xu); %is the product positive or negative
if posorneg > 0
    error('no root between points') 
end 
if nargin<3 
    error 'ya function needs more arguments'
elseif nargin==3  %testing that the right number of arguments is input 
    maxiter=200; es=0.0001; 
elseif nargin==4 
    maxiter=200;
else nargin>4 
end 
for iter=1:maxiter %doing falseposition as long as the iteration is less than the max iterations allowed
    root=(x2)-((func(x2)*(x1-x2))/(func(x1)-func(x2))); %false position formula 
    ea=((root-func(x1))/root)*100; %relative error
    fx=func(root); %finds the value at new estimate 
    if ea<es 
        break 
    else 
        if fx>0 %sets new bounds based on sign of the root found 
            x2=root; 
        else 
            x1=root;
        end 
    end  
end 
iter=maxiter; fx=func(root);disp(root); disp(iter); disp(fx); disp(ea)
 end 
            
        
