%  select individual/particle with probability wheel
%
%  --------------------- parameters  -------------------------
%  Probabity : [NP, 1] individual selected probability 
%              NP: the population size
%         
%  index_select : index selected from [1,2,...NP] with probability
%
%  --------------------- parameters  -------------------------
%%
function index_select = wheel_pro(Probabity)

num = length(Probabity);
index_select = 1;
pro_rand = rand(1);
Pro_sum=0;
for i = 1:num
    Pro_sum = Pro_sum + Probabity(i);
    if pro_rand <= Pro_sum
        index_select = i;
        return;
    end
end
     