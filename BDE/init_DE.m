%  initializaiton operator: initialize each particle/individul/solution of
%  the  population.
%
%  --------------------- parameters  -------------------------
%  lower_boundary : [1, D] is lower boundary of the search space
%
%  upper_boundary : [1, D] is upper boundary of the search space
%  
%  NP:  the population size, 
%          
%  D:   dimension of search  space
%
%  X : [NP, D]  initialized population
%
%  --------------------- parameters  -------------------------
%%
function X = init_DE(lower_boundary, upper_boundary, NP)

    [~, D] = size(lower_boundary);
    lower_boundary = ones(NP, 1) * lower_boundary;
    upper_boundary = ones(NP, 1) * upper_boundary;
    X = rand(NP, D).* (upper_boundary - lower_boundary) + lower_boundary;
end