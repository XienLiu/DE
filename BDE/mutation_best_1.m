%  mutation operator: DE/best/1 
%
%
%  --------------------- parameters  -------------------------
%  X : [NP, D] is the current population, where 
%              NP: the population size, 
%              D: dimension of search space
%
%  Y : [NP, 1]  is  the fitness  values of the population
%
%  Factor: range in (0,1) mutation factor
%  --------------------- parameters  -------------------------
%

%%
function  V = mutation_best_1(X, Y, Factor)
    [NP, ~] = size(X);
    index_r = randperm(NP); % randomly select particles 
    [~,min_index]=min(Y);   % select the best particle
    V = X(min_index,:)+Factor*(X(index_r(2),:)- X(index_r(1),:));  % DE/best/1