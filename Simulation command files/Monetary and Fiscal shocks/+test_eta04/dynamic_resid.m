function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = test_eta04.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(31, 1);
    residual(1) = (exp(y(16))) - ((exp(y(37))-params(1)*exp(y(12)))^(-1)-params(1)*params(3)*(exp(y(53))-exp(y(37))*params(1))^(-1));
    residual(2) = (params(9)*exp(params(5)*y(39))) - (exp(y(16)+y(17)));
    residual(3) = (1) - (params(3)*exp(y(45)-y(16))*(1+exp(y(52))-params(4)));
    residual(4) = (1) - (params(3)*exp(y(45)-y(16))*(1+exp(y(51))));
    residual(5) = (exp(y(16))) - ((exp(y(38))-params(1)*exp(y(13)))^(-1)-params(1)*params(22)*(exp(y(54))-params(1)*exp(y(38)))^(-1));
    residual(6) = (params(9)*exp(params(5)*y(40))) - (exp(y(16)+y(17)));
    residual(7) = (exp(y(21))) - (exp(y(35)+params(2)*(y(36)+y(2))+(1-params(2))*y(15)));
    residual(8) = (exp(y(2)-y(15))) - (T(2));
    residual(9) = (exp(y(24))) - (T(4)*exp(y(17)*(1-params(2)))*T(5));
    residual(10) = (exp(y(19))) - ((1-params(4))*exp(y(36)+y(2))+exp(y(18))*T(7));
    residual(11) = (exp((-y(20)))) - (T(7)-(exp(y(18)-y(1))-1)*params(8)*exp(y(18)-y(1))+params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*(exp(y(46)-y(18))-1));
    residual(12) = (exp(y(25))) - (params(6)/(params(6)-1)*exp(y(27)-y(28)));
    residual(13) = (exp(y(27))) - (exp(y(16)+y(24)+y(23))+params(3)*params(7)*exp(params(6)*y(48)+y(49)));
    residual(14) = (exp(y(28))) - (exp(y(16)+y(23))+params(3)*params(7)*exp((params(6)-1)*y(48)+y(50)));
    residual(15) = ((1-params(7))*exp(y(25)*(1-params(6)))+params(7)*exp((params(6)-1)*y(26))) - (1);
    residual(16) = (exp(y(22))) - ((1-params(7))*exp(y(25)*(-params(6)))+params(7)*exp(params(6)*y(26)+y(4)));
    residual(17) = (exp(y(23)+y(22))) - (exp(y(21)));
    residual(18) = (exp(y(29))+exp(y(32))) - (exp(y(31))+(1+exp(y(30)))*exp(y(6))+exp(y(43)));
    residual(19) = (y(31)-log(params(41))) - (params(16)*(y(7)-log(params(41)))+(1-params(16))*params(12)*(y(5)-log(params(33)))+x(it_, 3));
    residual(20) = (y(32)-log(params(42))) - (params(17)*(y(8)-log(params(42)))+(1-params(17))*params(14)*(y(6)-log(params(39))+(y(31)-log(params(41)))*params(13)));
    residual(21) = (y(34)-log(params(44))) - (params(18)*(y(9)-log(params(44)))+(1-params(18))*(y(26)*params(10)+params(11)*(y(23)-log(params(33))))-x(it_, 2));
    residual(22) = (exp(y(30))) - (exp(y(34))/exp(y(48)));
    residual(23) = (exp(y(23))) - (exp(y(31))+exp(y(18))+exp(y(14))+exp(y(18))*T(6));
    residual(24) = (exp(y(14))) - (exp(y(37))*(1-params(20))+exp(y(38))*params(20));
    residual(25) = (exp(y(15))) - ((1-params(20))*exp(y(39))+params(20)*exp(y(40)));
    residual(26) = (exp(y(18))) - ((1-params(20))*exp(y(44)));
    residual(27) = (exp(y(19))) - ((1-params(20))*exp(y(41)));
    residual(28) = (exp(y(43))) - (params(20)*exp(y(42)));
    residual(29) = (exp(y(38))) - (exp(y(42))+exp(y(17)+y(40)));
    residual(30) = (y(35)) - (params(15)*y(10)+x(it_, 1));
    residual(31) = (y(36)) - (params(19)*y(11)+x(it_, 4));

end
