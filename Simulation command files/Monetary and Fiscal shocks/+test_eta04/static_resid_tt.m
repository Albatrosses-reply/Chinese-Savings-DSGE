function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 8);

T(1) = (exp(y(24))-exp(y(24))*params(1))^(-1);
T(2) = (exp(y(25))-params(1)*exp(y(25)))^(-1);
T(3) = params(2)/(1-params(2))*exp(y(4));
T(4) = (1+exp(y(20)))*exp(y(7))-exp(y(23)+y(7))*(1-params(4));
T(5) = T(3)/T(4);
T(6) = params(2)^(-params(2))*(1-params(2))^(params(2)-1);
T(7) = T(6)*exp((-y(22)));
T(8) = ((1+exp(y(20)))*exp(y(7)-y(23))-exp(y(7))*(1-params(4)))^params(2);

end
