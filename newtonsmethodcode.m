%% Newtons method code 
% one variable will be used for the function x and the other will be for
% the guess. We will use the diff function to do the differentiation. 
% Ben Wilson MechE student CSU
syms guess='potatoe';                 %'data given' 
func=(guess).^2                 %'function'
x=diff(func,guess) 

%newton1=guess-(func)./diff(func,guess)
