%  mutation operator: DE/dynamic/1 
%
%  --------------------- parameters  -------------------------
%  X : [NP, D] is the current population, where 
%              NP: the population size, 
%              D: dimension of search space
%
%  Y : [NP, 1]  is  the fitness  values of the population
%
%  V  :[1, D]  is the produced mutatant individual
%  
%  Factor: range in (0,1) mutation factor
%  --------------------- parameters  -------------------------

%%
function  V = mutation_dynamic_1(X, Y, Factor)

    [NP, ~] = size(X);
    index_r = randperm(NP); % randomly select particles 
    
    %% select base vector for mutation with probability
    lim_value = 1e-3;
    A = max(Y) - Y; 
    B = log(A + 1);
    C = (B  + lim_value) / sum(B + lim_value); 
    index_select = wheel_pro(C);
    
    V = X(index_select,:)+Factor*(X(index_r(2),:)- X(index_r(1),:));  % DE/dynamic/1
    
    
    