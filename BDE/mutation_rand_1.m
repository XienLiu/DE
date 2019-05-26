%  mutation operator: DE/rand/1 
%
%
%  --------------------- parameters  -------------------------
%  X : [NP, D] is the current population, where 
%              NP is the population size, 
%              D is dimension of search  space
%
%  Factor: range in (0,1) mutation factor
%
%  V : [1, D]  is  mutant individual
%
%  --------------------- parameters  -------------------------
%

%%
function  V = mutation_rand_1(X,Factor)
    [NP, D] = size(X);
    index_r = randperm(NP); % randomly select particles 
    V = X(index_r(1),:)+Factor*(X(index_r(3),:)- X(index_r(2),:)); % DE/rand/1