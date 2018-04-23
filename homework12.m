%% matrix work 
A=[8 2 1; 3 7 2; 2 3 9]
B=[1; 1; 1]
[L,U]=lu(A)
[x]=A\B