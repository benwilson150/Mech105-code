functo
% Homework  10 
% This script will be used to find the mol fraction of H2O that
% disassociates in a high heat reaction 
% Inputs 
%  K= reactions equalibrium constant (0.05)
%  pt= total pressure (3 atm)
%  reaction function= (x/(1-x))*(sqrt(2*pt/(2+x))-k)
% Outputs
%  x= solution
K=0.05; pt=3; syms x; syms solve 
solve=((x/(1-x))*(sqrt(2*pt/(2+x)))-K)
