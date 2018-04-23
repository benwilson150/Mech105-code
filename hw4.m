mo='month'; day='day'; leap='fuck';
%%  poop
function daypassed=hw4(mo,day,leap)
%% Homework 4 day function 
%this function will be used to find the numbers of days that have passed in
%the year based on the date using months and days 
% the inputs will be the month it is numerically(mo),the day of the month (da) and
% whether or not it is a leap lear(leap)
daypas(mo)=[1 31 28 31 30 31 30 31 31 30 31 30 31]; %number of days at the start of each month
daypasl(mo)=[1 31 29 31 30 31 30 31 31 30 31 30 31]; %same but a leap year 
if nargin==2    %sets it to a regular year if not specified  
    leap=0;
elseif nargin==3 %continues the function with a response if it is correct
    disp(thanks)
else nargin<2; %says something is messed up if not correctly input 
    error('not enough variables')
end 
if day>(daypas(mo+1)) %makes sure that the  day requested isnt out of the range of the month 
    disp('are you in the future?')
else  
end 
if leap==1 
    daypassed=sum(daypasl(1:mo-1)+day);
else leap=0; 
    daypassed=sum(daypas(1:mo-1)+day);
end 
disp(daypassed)
end 
