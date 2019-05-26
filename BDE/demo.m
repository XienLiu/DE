%  DE algorithm with our proposed DE/dynamic/1 mutation operator
%  tested by CEC 2005 benchmark suit which include 25  functions 
%  
clear;
clc;
Num_repeate = 50; 
load('cec2005_para');
X_left = cec2005_para.X_left; % lower boundary  of search space
X_right = cec2005_para.X_right; % upper boudary pf search space

%% Test on cec 2005 25 functions 
for test_function = 1: 25  
    for i = 1: Num_repeate   % each experiment is repeated 25 times
        %% Parameters setting for DE algorithm
        paras.g_max = 30000;      % maximum iteration
        paras.NP = 100;          % population size
        paras.Factor = 0.5;      % mutation factor
        paras.CR = 0.9 ;         % crossover rate
        paras.D = 30;            % dimension of searc space
        paras.func_num = test_function;          % which function in CEC2005 benchmark suit is used
        paras.lower_boundary = X_left(test_function)*ones(1, paras.D) ;    % lower boundary of the search space
        paras.upper_boundary = X_right(test_function)*ones(1, paras.D);    % upper boundary of the search space

        %% DE algorithm using mutation operation  DE/dynamic/1 
        X = DE_dynamic_1(paras);  
        
        %% return the best solution & value 
        fit_value = fitness_cec2005(X, test_function);
        [min_value,min_index] = min(fit_value);
        x_best = X(min_index, :);
        
        %% record the best solution & value 
        X_best(test_function, i,:) = x_best;
        Y_best(test_function, i) = min_value;
    end
end          
