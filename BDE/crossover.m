%  crossover operator: 
%
%
%  --------------------- parameters  -------------------------
%  X_target : [1, D] is the target individual, where             
%              D is dimension of search space
%
%  V : [1, D]  is  mutant individual  
%
%  CR : crossover rate
%  
%  U : [1, D]  is the crossover individual
%  --------------------- parameters  -------------------------
%

%%
function  U = crossover(X_target, V, CR)

    [~, D] = size(X_target);
    
    cross_index = rand(1,D)<CR;
    U = V.*cross_index + X_target.*(~cross_index);
    
    index_rand = randperm(D);
    j_rand = index_rand(1);
    U(1, j_rand) = V(1, j_rand);




