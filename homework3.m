%% Homework Problem  3
% this code will be used to approximate the area of a cylindrical and cone
% shaped vat of water. This will be based on a float at height h. 
% the vat has a diameter of 25m and the cone has an upper diameter of 46
% meters. The total height of the vat is 19 meter and the cone is 14 meters
% tall. Has to detect non meter based inputs 
h=input('height of float')
rcyn=12.5; r1=12.5; r2=23; 
Vcyn=pi*(h)*(rcyn^2);
Vcone=(1/3)*pi*((r1^2+r2^2)+(r1*r2))*h
if h<=19&&h>=0
    Vcyn;
    disp(Vcyn)
elseif  h<=33&&h>=19
    Vcone+9326.6;
    disp(Vcone)
else 
    error('u messed up')
end
