%% homework 11 work
%%newton raphson- method is guess-(f(guess))/(f'(guess))
v0=55; c=15; m=80; g=9.81;
syms x 
func(x)=v0*exp((-c/m)*x)-((m*g)/c)*(1-exp((-c/m)*x));
guess1=x-(func(x)/(diff(func)))
nums=subs(guess1,x,3.8083)
this=double(nums)
x=this
%% new shit
funkyfresh=-1.5*(x^6)-2*(x^4)+12*x
der=diff(funkyfresh)
%% bisection of function
a=0;                            % start of interval
b=2;                            % end of interval
epsilon=0.000001;               % accuracy value
iter= 50;                       % maximum number of iterations
tau=double((sqrt(5)-1)/2);      % golden proportion coefficient, around 0.618
k=3;                            % number of iterations


x1=a+(1-tau)*(b-a);             % computing x values
x2=a+tau*(b-a);

f_x1=funkyfresh(x1);                     % computing values in x points
f_x2=funkyfresh(x2);

plot(x1,f_x1,'rx')              % plotting x
plot(x2,f_x2,'rx')

while ((abs(b-a)>epsilon) && (k<iter))
    k=k+1;
    if(f_x1<f_x2)
        b=x2;
        x2=x1;
        x1=a+(1-tau)*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        
        plot(x1,f_x1,'rx');
    else
        a=x1;
        x1=x2;
        x2=a+tau*(b-a);
        
        f_x1=f(x1);
        f_x2=f(x2);
        
        plot(x2,f_x2,'rx')
    end
    
    k=k+1;
end
