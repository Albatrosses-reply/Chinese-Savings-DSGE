function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 17);

T = test_eta04.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(8) = params(8)/2*(-exp(y(18)-y(1)))*2*(exp(y(18)-y(1))-1);
T(9) = (-T(8));
T(10) = params(8)/2*exp(y(18)-y(1))*2*(exp(y(18)-y(1))-1);
T(11) = (-T(10));
T(12) = ((1+exp(y(33)))*exp(y(3))-exp(y(36)+y(20))*(1-params(4)))*((1+exp(y(33)))*exp(y(3))-exp(y(36)+y(20))*(1-params(4)));
T(13) = getPowerDeriv((1+exp(y(33)))*exp(y(3)-y(36))-(1-params(4))*exp(y(20)),params(2),1);
T(14) = getPowerDeriv(exp(y(37))-params(1)*exp(y(12)),(-1),1);
T(15) = getPowerDeriv(exp(y(53))-exp(y(37))*params(1),(-1),1);
T(16) = getPowerDeriv(exp(y(38))-params(1)*exp(y(13)),(-1),1);
T(17) = getPowerDeriv(exp(y(54))-params(1)*exp(y(38)),(-1),1);

end
