tempF=32:3.6:92;
tempC=5/9*(tempF-32);
rho=5.5289e-8*((tempC).^3)-8.5016e-6*((tempC).^2)+6.5622e-5*(tempC)+099987;
%creating the figure 
plot(tempC,rho)

%% question 9 electrical  current 
%q(t)=q0e(?Rt/(2L))cos(sqrt(1/LC?(R2L)e2*t)
%q0=10 initial charge Resistance=60 L(inductance)=9 C(capitance)=0.00005 time from 0-0.8 sec 
t=(0:0.1:0.8); R=60; q0=10; C=0.00005; L=9 ;
%formula 
qfinal1=q0*(exp((-R.*t)/(2*L)));
qfinalpt2=cos(sqrt(1/(L*C)-((R/(2*L))^2).*t));
qfinal=qfinal1.*qfinalpt2;
plot(t,qfinal)
%% questeion 10 matlab hw 1
% normal probability curve
z=-5:0.1:5
funcZ= (1/sqrt(2*pi))*exp((-z.^2)/2) 
plot(z,funcZ)
