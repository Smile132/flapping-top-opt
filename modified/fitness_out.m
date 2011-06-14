% fitness_out:
%   Input: a vector X of size 1-by-Nvariables 
%   Output: a vector of size 1-by-numberOfObjectives evaluated at a decision variable.
%
% Nvariables is the dimension of the optimization problem (number of
% decision variables).

function obj = fitness_out(x)

[CL_ave,CT_ave,CP_ave,eff,mass,peak_disp] = evaluate_fitness(x);

constraintVal = constraintExp(CL_ave,0.5)+constraintExp(CP_ave,0.2) + constraintExp(peak_disp,0.1);

obj(1,1) = eff + constraintVal;

obj(1,2) = mass + constraintVal;

end