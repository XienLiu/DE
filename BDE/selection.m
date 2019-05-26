%  selection operator: target individual vs  crossover individual
%
%
%  --------------------- parameters  -------------------------
%  X_target : [1, D] is the target individual, where             
%              D is dimension of search space
%  
%  U : [1, D]  is the crossover individual
%  
%  X_survivor: [1, D]  is the survivor individual
% 
%  y_survivor: real-value measureing fitness of the survivor individal 
%
%  fitness_target: real-value measureing fitness of the target individal 
%
%  fitness_u : real-value measureing fitness of the target individal 
%  
%  --------------------- parameters  -------------------------
%

%%
function  [X_survivor, y_survivor] = selection(X_target, U, fitness_target, fitness_u)

    if fitness_u < fitness_target
        X_survivor = U;
        y_survivor = fitness_u;
    else
        X_survivor = X_target;
        y_survivor = fitness_target;
    end
                