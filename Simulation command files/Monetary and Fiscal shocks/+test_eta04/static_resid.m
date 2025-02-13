function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = test_eta04.static_resid_tt(T, y, x, params);
end
residual = zeros(31, 1);
    residual(1) = (exp(y(3))) - (T(1)-T(1)*params(1)*params(3));
    residual(2) = (params(9)*exp(params(5)*y(26))) - (exp(y(3)+y(4)));
    residual(3) = (1) - (params(3)*(1+exp(y(20))-params(4)));
    residual(4) = (1) - (params(3)*(1+exp(y(17))));
    residual(5) = (exp(y(3))) - (T(2)-T(2)*params(1)*params(22));
    residual(6) = (params(9)*exp(params(5)*y(27))) - (exp(y(3)+y(4)));
    residual(7) = (exp(y(8))) - (exp(y(22)+params(2)*(y(23)+y(6))+(1-params(2))*y(2)));
    residual(8) = (exp(y(6)-y(2))) - (T(5));
    residual(9) = (exp(y(11))) - (T(7)*exp(y(4)*(1-params(2)))*T(8));
    residual(10) = (exp(y(6))) - ((1-params(4))*exp(y(23)+y(6))+exp(y(5)));
    residual(11) = (exp((-y(7)))) - (1);
    residual(12) = (exp(y(12))) - (params(6)/(params(6)-1)*exp(y(14)-y(15)));
    residual(13) = (exp(y(14))) - (exp(y(3)+y(11)+y(10))+params(3)*params(7)*exp(y(14)+params(6)*y(13)));
    residual(14) = (exp(y(15))) - (exp(y(3)+y(10))+params(3)*params(7)*exp(y(15)+(params(6)-1)*y(13)));
    residual(15) = ((1-params(7))*exp(y(12)*(1-params(6)))+params(7)*exp((params(6)-1)*y(13))) - (1);
    residual(16) = (exp(y(9))) - ((1-params(7))*exp(y(12)*(-params(6)))+params(7)*exp(params(6)*y(13)+y(9)));
    residual(17) = (exp(y(10)+y(9))) - (exp(y(8)));
    residual(18) = (exp(y(16))+exp(y(19))) - (exp(y(18))+(1+exp(y(17)))*exp(y(16))+exp(y(30)));
    residual(19) = (y(18)-log(params(41))) - ((y(18)-log(params(41)))*params(16)+(1-params(16))*params(12)*(y(10)-log(params(33)))+x(3));
    residual(20) = (y(19)-log(params(42))) - ((y(19)-log(params(42)))*params(17)+(1-params(17))*params(14)*(y(16)-log(params(39))+(y(18)-log(params(41)))*params(13)));
    residual(21) = (y(21)-log(params(44))) - ((y(21)-log(params(44)))*params(18)+(1-params(18))*(y(13)*params(10)+(y(10)-log(params(33)))*params(11))-x(2));
    residual(22) = (exp(y(17))) - (exp(y(21))/exp(y(13)));
    residual(23) = (exp(y(10))) - (exp(y(18))+exp(y(5))+exp(y(1)));
    residual(24) = (exp(y(1))) - (exp(y(24))*(1-params(20))+exp(y(25))*params(20));
    residual(25) = (exp(y(2))) - ((1-params(20))*exp(y(26))+params(20)*exp(y(27)));
    residual(26) = (exp(y(5))) - ((1-params(20))*exp(y(31)));
    residual(27) = (exp(y(6))) - ((1-params(20))*exp(y(28)));
    residual(28) = (exp(y(30))) - (params(20)*exp(y(29)));
    residual(29) = (exp(y(25))) - (exp(y(29))+exp(y(4)+y(27)));
    residual(30) = (y(22)) - (y(22)*params(15)+x(1));
    residual(31) = (y(23)) - (y(23)*params(19)+x(4));

end
