%  DE algorithm using the mutation operator DE/dynamic/1 
%
%%
function  X = DE_dynamic_1(paras)
%%
% Parameters 
g_max= paras.g_max;   % maximum iteration
NP = paras.NP;        % population size
Factor= paras.Factor; % mutation factor
CR= paras.CR;         % crossover rate
lower_boundary = paras.lower_boundary; % lower boundary of the search space
upper_boundary = paras.upper_boundary; % upper boundary of the search space
func_num = paras.func_num; % which function in CEC2005 benchmark suit is used

%% initialization 

X = init_DE(lower_boundary, upper_boundary, NP);
Y = fitness_cec2005(X, func_num);
%%  iteration
for g = 1:g_max
  for i = 1:NP
      
      % muatation opreator: DE/dynamic/1
      V = mutation_dynamic_1(X, Y, Factor);

      % crossover operator
      X_target = X(i,:); 
      U = crossover(X_target, V, CR);

      % selection operator 
      fitness_target = fitness_cec2005(X_target, func_num);
      fitness_u = fitness_cec2005(U, func_num);
      [X_survivor, y_survivor] = selection(X_target, U, fitness_target, fitness_u);
      X(i,:) = X_survivor;
      Y(i) = y_survivor;
  end
  min(Y) % print the best results for each generation
end