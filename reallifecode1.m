%% Doing Laundry from dryer 
% This code will be focused on  the process that you go through when your
% dryer beeps to take the clothes out 
dryerbeep='dryer opened';
clothestype=["tshirt","allthesocks","missingsock","pants","undies"]; %define each piece of clothing as a part  of an array
numcsnofold=0; %number of clothes folded already
disp(dryerbeep)
x=input('how much clothes u got?  ');
numcsfold=x; %sets a variable to  the number of clothes in the dryer ; 
 while numcsnofold<=numcsfold
    gp=randi(5); %gp means garment picked
    opc=clothestype(gp);%opc means one picked clothes 
    if opc=="tshirt"
        disp('t shirt:put it on a hanger')
    elseif opc=="allthesocks"; 
        disp('Both socks:be glad the dryer didnt eat one, thrown in drawer')
    elseif opc=="missingsock"; 
        disp('One sock: mourn loss, put in same drawer regardless')
    elseif opc=="pants";
        disp('Pants: fold those bad boys')
    else opc=="undies";
        disp('Undies: fold and put in drawer')
    end 
    numcsnofold=numcsnofold+1
end 
        