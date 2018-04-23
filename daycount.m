function daypassed=daycount(m,day,leap)
% Homework 4 day function 
%daypassed= daycount(mo,day,leap)calculates how many days have passed in a
%year at any month and day 
%input:
%mo=month numerically displayed; day=day of the month; leap=whteher or not
%it is a leap year 
%outputs; daypassed= days that have passed in full days 
daypas=[0 31 28 31 30 31 30 31 31 30 31 30 31]; %number of days at the start of each month
daypasl=[0 31 29 31 30 31 30 31 31 30 31 30 31]; %same but a leap year 
if nargin==2    %sets it to a regular year if not specified  
    leap=0;
elseif nargin==3 %continues the function with a response if it is correct
    disp('thanks')
else nargin<2; %says something is messed up if not correctly input 
    error('not enough variables')
end 
if day>(daypas(m+1)) %makes sure that the  day requested isnt out of the range of the month 
    error('are you in the future?')
else  
end 
if leap==1 
    daypassed=sum(daypasl(1:m))+day;
else leap==0; 
    daypassed=sum(daypas(1:m))+day;
end 
disp(daypassed)
end 
