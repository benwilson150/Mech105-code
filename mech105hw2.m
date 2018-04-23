%% Homework 2
%% Problem 1 Finding charge on the capacitor

%q(t)=q0e(?Rt/(2L))cos(sqrt(1/LC?(R2L)e2*t)
%q0=10 initial charge Resistance=60 L(inductance)=9 C(capitance)=0.00005 time from 0-0.8 sec 
t=(0:0.1:0.8); R=60; q0=10; C=0.00005; L=9 ;
%formula 
qfinal1=q0*(exp((-R.*t)/(2*L)));
qfinalpt2=cos(sqrt(1/(L*C)-((R/(2*L))^2).*t));
qfinal=qfinal1.*qfinalpt2;
%plot is in first location with allocation for two plots
subplot(2,1,1); plot(t,qfinal)
xlabel('time')
ylabel('charge on capacitor')
%second plot creation
qfinal1=q0*(exp((-R.*t)/(2*L)));
qfinalpt2=cos(sqrt(1/(L*10*C)-((R/(2*L))^2).*t));%increase c value by ten
qfinal=qfinal1.*qfinalpt2;
subplot(2,1,2); plot(t,qfinal)%plot second graph below 
xlabel('time')
ylabel('charge on capacitor')
%% Problem 2 concentration vs time of a degrading chemical 
%needs to have plot using red diamonds and a green dashed line for t=0 to
%t=70. Also needs labels and legend
t1=(0:5:70);
c=4.84*exp(-0.034.*t1);
plot(t1,c,'rd--')
xlabel('time'); ylabel('concentration')
legend('concentration over time of bromine')