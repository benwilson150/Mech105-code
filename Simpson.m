eulerfunction [I]=Simpson(x,y)
% Simpson will do the composite method for approximation. It will check for
% the number of intervals and if its odd use the trapezodal rule for the
% last interval 
% Input 
% x= data independent variables 
% y= Data dependant variable 
% Output
% I= Approximated value
clc 
if nargin<2 %checking number of inputs 
    error('you need another interval of values')
end 
space=diff(x); makeitsame=(space/mean(space)); %space is the space between intervals,
%make it same just shows makes it one value
if space~=makeitsame
    error('x variable is not evenly spaced')
end 
even=y(2:2:end-1); odd=y(3:2:end); %simplifying simpsons rule with multiplication rules 
if mod(length(x),2)==0
    %do the simpsons rule %end for last value, 
    I=2*(y(1)+4*sum(odd)+2*sum(even)+y(end))./(6);
else 
    I=(y(1)+4*sum(odd)+2*sum(even))./(6)+(y(end)+y(end-1))/2*(x(end)-x(end-1));
    %do simpsons rule plus the trapezodal rule 
end 
end 

    
