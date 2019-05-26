%  fitness_cec2005: using CEC2005 25 benchmark functions as testing set
%
%
%  --------------------- parameters  -------------------------
%  X : [Num, D] is the current population, where 
%              Num is number of particles/solutions to be evaluated, 
%              D is dimension of search  space
%
%  func_num :   an integer of {1,2, ..., 25} used to indicate which
%               funtion is used to calculate the fitenss value
%
%  fit_value: [Num, 1] is the fitness value for each of the particles
%  --------------------- parameters  -------------------------
%
%%
function fit_value = fitness_cec2005(X, func_num)

    addpath(genpath('./benchmark_func_cec2005/'))
    load('cec2005_para');
    
    % lower bound 
    X_left = cec2005_para.X_left;
    % upper bound
    X_right = cec2005_para.X_right;
    % shifted by bias so that the minimum value to each function is 0
    f_bias = cec2005_para.f_bias;

     X_boundary = min(max(X,X_left(func_num)),X_right(func_num));
     fit_value=benchmark_func(X_boundary,func_num)-f_bias(func_num);
end
     