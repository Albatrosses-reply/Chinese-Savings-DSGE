function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = test_eta04.static_g1_tt(T, y, x, params);
end
g1 = zeros(31, 31);
g1(1,3)=exp(y(3));
g1(1,24)=(-(T(10)-params(1)*params(3)*T(10)));
g1(2,3)=(-exp(y(3)+y(4)));
g1(2,4)=(-exp(y(3)+y(4)));
g1(2,26)=params(9)*params(5)*exp(params(5)*y(26));
g1(3,20)=(-(params(3)*exp(y(20))));
g1(4,17)=(-(params(3)*exp(y(17))));
g1(5,3)=exp(y(3));
g1(5,25)=(-(T(11)-params(1)*params(22)*T(11)));
g1(6,3)=(-exp(y(3)+y(4)));
g1(6,4)=(-exp(y(3)+y(4)));
g1(6,27)=params(9)*params(5)*exp(params(5)*y(27));
g1(7,2)=(-((1-params(2))*exp(y(22)+params(2)*(y(23)+y(6))+(1-params(2))*y(2))));
g1(7,6)=(-(params(2)*exp(y(22)+params(2)*(y(23)+y(6))+(1-params(2))*y(2))));
g1(7,8)=exp(y(8));
g1(7,22)=(-exp(y(22)+params(2)*(y(23)+y(6))+(1-params(2))*y(2)));
g1(7,23)=(-(params(2)*exp(y(22)+params(2)*(y(23)+y(6))+(1-params(2))*y(2))));
g1(8,2)=(-exp(y(6)-y(2)));
g1(8,4)=(-T(5));
g1(8,6)=exp(y(6)-y(2));
g1(8,7)=(-((-(T(3)*T(4)))/(T(4)*T(4))));
g1(8,20)=(-((-(T(3)*exp(y(20))*exp(y(7))))/(T(4)*T(4))));
g1(8,23)=(-((-(T(3)*(-(exp(y(23)+y(7))*(1-params(4))))))/(T(4)*T(4))));
g1(9,4)=(-(T(8)*T(7)*(1-params(2))*exp(y(4)*(1-params(2)))));
g1(9,7)=(-(T(7)*exp(y(4)*(1-params(2)))*((1+exp(y(20)))*exp(y(7)-y(23))-exp(y(7))*(1-params(4)))*T(9)));
g1(9,11)=exp(y(11));
g1(9,20)=(-(T(7)*exp(y(4)*(1-params(2)))*T(9)*exp(y(20))*exp(y(7)-y(23))));
g1(9,22)=(-(T(8)*exp(y(4)*(1-params(2)))*T(6)*(-exp((-y(22))))));
g1(9,23)=(-(T(7)*exp(y(4)*(1-params(2)))*T(9)*(1+exp(y(20)))*(-exp(y(7)-y(23)))));
g1(10,5)=(-exp(y(5)));
g1(10,6)=exp(y(6))-(1-params(4))*exp(y(23)+y(6));
g1(10,23)=(-((1-params(4))*exp(y(23)+y(6))));
g1(11,7)=(-exp((-y(7))));
g1(12,12)=exp(y(12));
g1(12,14)=(-(params(6)/(params(6)-1)*exp(y(14)-y(15))));
g1(12,15)=(-(params(6)/(params(6)-1)*(-exp(y(14)-y(15)))));
g1(13,3)=(-exp(y(3)+y(11)+y(10)));
g1(13,10)=(-exp(y(3)+y(11)+y(10)));
g1(13,11)=(-exp(y(3)+y(11)+y(10)));
g1(13,13)=(-(params(3)*params(7)*params(6)*exp(y(14)+params(6)*y(13))));
g1(13,14)=exp(y(14))-params(3)*params(7)*exp(y(14)+params(6)*y(13));
g1(14,3)=(-exp(y(3)+y(10)));
g1(14,10)=(-exp(y(3)+y(10)));
g1(14,13)=(-(params(3)*params(7)*(params(6)-1)*exp(y(15)+(params(6)-1)*y(13))));
g1(14,15)=exp(y(15))-params(3)*params(7)*exp(y(15)+(params(6)-1)*y(13));
g1(15,12)=(1-params(7))*(1-params(6))*exp(y(12)*(1-params(6)));
g1(15,13)=params(7)*(params(6)-1)*exp((params(6)-1)*y(13));
g1(16,9)=exp(y(9))-params(7)*exp(params(6)*y(13)+y(9));
g1(16,12)=(-((1-params(7))*(-params(6))*exp(y(12)*(-params(6)))));
g1(16,13)=(-(params(7)*params(6)*exp(params(6)*y(13)+y(9))));
g1(17,8)=(-exp(y(8)));
g1(17,9)=exp(y(10)+y(9));
g1(17,10)=exp(y(10)+y(9));
g1(18,16)=exp(y(16))-(1+exp(y(17)))*exp(y(16));
g1(18,17)=(-(exp(y(17))*exp(y(16))));
g1(18,18)=(-exp(y(18)));
g1(18,19)=exp(y(19));
g1(18,30)=(-exp(y(30)));
g1(19,10)=(-((1-params(16))*params(12)));
g1(19,18)=1-params(16);
g1(20,16)=(-((1-params(17))*params(14)));
g1(20,18)=(-((1-params(17))*params(14)*params(13)));
g1(20,19)=1-params(17);
g1(21,10)=(-((1-params(18))*params(11)));
g1(21,13)=(-((1-params(18))*params(10)));
g1(21,21)=1-params(18);
g1(22,13)=(-((-(exp(y(21))*exp(y(13))))/(exp(y(13))*exp(y(13)))));
g1(22,17)=exp(y(17));
g1(22,21)=(-(exp(y(21))/exp(y(13))));
g1(23,1)=(-exp(y(1)));
g1(23,5)=(-exp(y(5)));
g1(23,10)=exp(y(10));
g1(23,18)=(-exp(y(18)));
g1(24,1)=exp(y(1));
g1(24,24)=(-(exp(y(24))*(1-params(20))));
g1(24,25)=(-(exp(y(25))*params(20)));
g1(25,2)=exp(y(2));
g1(25,26)=(-((1-params(20))*exp(y(26))));
g1(25,27)=(-(params(20)*exp(y(27))));
g1(26,5)=exp(y(5));
g1(26,31)=(-((1-params(20))*exp(y(31))));
g1(27,6)=exp(y(6));
g1(27,28)=(-((1-params(20))*exp(y(28))));
g1(28,29)=(-(params(20)*exp(y(29))));
g1(28,30)=exp(y(30));
g1(29,4)=(-exp(y(4)+y(27)));
g1(29,25)=exp(y(25));
g1(29,27)=(-exp(y(4)+y(27)));
g1(29,29)=(-exp(y(29)));
g1(30,22)=1-params(15);
g1(31,23)=1-params(19);

end
