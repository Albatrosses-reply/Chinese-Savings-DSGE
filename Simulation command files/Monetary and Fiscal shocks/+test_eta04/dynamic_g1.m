function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = test_eta04.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(31, 58);
g1(1,16)=exp(y(16));
g1(1,12)=(-((-(params(1)*exp(y(12))))*T(14)));
g1(1,37)=(-(exp(y(37))*T(14)-params(1)*params(3)*(-(exp(y(37))*params(1)))*T(15)));
g1(1,53)=params(1)*params(3)*exp(y(53))*T(15);
g1(2,16)=(-exp(y(16)+y(17)));
g1(2,17)=(-exp(y(16)+y(17)));
g1(2,39)=params(9)*params(5)*exp(params(5)*y(39));
g1(3,16)=(-((1+exp(y(52))-params(4))*params(3)*(-exp(y(45)-y(16)))));
g1(3,45)=(-(params(3)*exp(y(45)-y(16))*(1+exp(y(52))-params(4))));
g1(3,52)=(-(params(3)*exp(y(45)-y(16))*exp(y(52))));
g1(4,16)=(-((1+exp(y(51)))*params(3)*(-exp(y(45)-y(16)))));
g1(4,45)=(-(params(3)*exp(y(45)-y(16))*(1+exp(y(51)))));
g1(4,51)=(-(params(3)*exp(y(45)-y(16))*exp(y(51))));
g1(5,16)=exp(y(16));
g1(5,13)=(-((-(params(1)*exp(y(13))))*T(16)));
g1(5,38)=(-(exp(y(38))*T(16)-params(1)*params(22)*(-(params(1)*exp(y(38))))*T(17)));
g1(5,54)=params(1)*params(22)*exp(y(54))*T(17);
g1(6,16)=(-exp(y(16)+y(17)));
g1(6,17)=(-exp(y(16)+y(17)));
g1(6,40)=params(9)*params(5)*exp(params(5)*y(40));
g1(7,15)=(-((1-params(2))*exp(y(35)+params(2)*(y(36)+y(2))+(1-params(2))*y(15))));
g1(7,2)=(-(params(2)*exp(y(35)+params(2)*(y(36)+y(2))+(1-params(2))*y(15))));
g1(7,21)=exp(y(21));
g1(7,35)=(-exp(y(35)+params(2)*(y(36)+y(2))+(1-params(2))*y(15)));
g1(7,36)=(-(params(2)*exp(y(35)+params(2)*(y(36)+y(2))+(1-params(2))*y(15))));
g1(8,15)=(-exp(y(2)-y(15)));
g1(8,17)=(-T(2));
g1(8,2)=exp(y(2)-y(15));
g1(8,3)=(-((-(T(1)*(1+exp(y(33)))*exp(y(3))))/T(12)));
g1(8,20)=(-((-(T(1)*(-(exp(y(36)+y(20))*(1-params(4))))))/T(12)));
g1(8,33)=(-((-(T(1)*exp(y(33))*exp(y(3))))/T(12)));
g1(8,36)=(-((-(T(1)*(-(exp(y(36)+y(20))*(1-params(4))))))/T(12)));
g1(9,17)=(-(T(5)*T(4)*(1-params(2))*exp(y(17)*(1-params(2)))));
g1(9,3)=(-(T(4)*exp(y(17)*(1-params(2)))*(1+exp(y(33)))*exp(y(3)-y(36))*T(13)));
g1(9,20)=(-(T(4)*exp(y(17)*(1-params(2)))*T(13)*(-((1-params(4))*exp(y(20))))));
g1(9,24)=exp(y(24));
g1(9,33)=(-(T(4)*exp(y(17)*(1-params(2)))*T(13)*exp(y(33))*exp(y(3)-y(36))));
g1(9,35)=(-(T(5)*exp(y(17)*(1-params(2)))*T(3)*(-exp((-y(35))))));
g1(9,36)=(-(T(4)*exp(y(17)*(1-params(2)))*T(13)*(1+exp(y(33)))*(-exp(y(3)-y(36)))));
g1(10,1)=(-(exp(y(18))*T(9)));
g1(10,18)=(-(exp(y(18))*T(7)+exp(y(18))*T(11)));
g1(10,2)=(-((1-params(4))*exp(y(36)+y(2))));
g1(10,19)=exp(y(19));
g1(10,36)=(-((1-params(4))*exp(y(36)+y(2))));
g1(11,16)=(-((exp(y(46)-y(18))-1)*params(8)*exp(2*(y(46)-y(18)))*exp(y(47)-y(20))*params(3)*(-exp(y(45)-y(16)))));
g1(11,45)=(-(params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*(exp(y(46)-y(18))-1)));
g1(11,1)=(-(T(9)-(params(8)*exp(y(18)-y(1))*(-exp(y(18)-y(1)))+(exp(y(18)-y(1))-1)*params(8)*(-exp(y(18)-y(1))))));
g1(11,18)=(-(T(11)-((exp(y(18)-y(1))-1)*params(8)*exp(y(18)-y(1))+exp(y(18)-y(1))*params(8)*exp(y(18)-y(1)))+(exp(y(46)-y(18))-1)*params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*(-2)+params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*(-exp(y(46)-y(18)))));
g1(11,46)=(-((exp(y(46)-y(18))-1)*params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*2*exp(2*(y(46)-y(18)))+params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*exp(y(46)-y(18))));
g1(11,20)=(-exp((-y(20))))-(exp(y(46)-y(18))-1)*params(8)*exp(2*(y(46)-y(18)))*params(3)*exp(y(45)-y(16))*(-exp(y(47)-y(20)));
g1(11,47)=(-(params(8)*params(3)*exp(y(45)-y(16))*exp(y(47)-y(20))*exp(2*(y(46)-y(18)))*(exp(y(46)-y(18))-1)));
g1(12,25)=exp(y(25));
g1(12,27)=(-(params(6)/(params(6)-1)*exp(y(27)-y(28))));
g1(12,28)=(-(params(6)/(params(6)-1)*(-exp(y(27)-y(28)))));
g1(13,16)=(-exp(y(16)+y(24)+y(23)));
g1(13,23)=(-exp(y(16)+y(24)+y(23)));
g1(13,24)=(-exp(y(16)+y(24)+y(23)));
g1(13,48)=(-(params(3)*params(7)*params(6)*exp(params(6)*y(48)+y(49))));
g1(13,27)=exp(y(27));
g1(13,49)=(-(params(3)*params(7)*exp(params(6)*y(48)+y(49))));
g1(14,16)=(-exp(y(16)+y(23)));
g1(14,23)=(-exp(y(16)+y(23)));
g1(14,48)=(-(params(3)*params(7)*(params(6)-1)*exp((params(6)-1)*y(48)+y(50))));
g1(14,28)=exp(y(28));
g1(14,50)=(-(params(3)*params(7)*exp((params(6)-1)*y(48)+y(50))));
g1(15,25)=(1-params(7))*(1-params(6))*exp(y(25)*(1-params(6)));
g1(15,26)=params(7)*(params(6)-1)*exp((params(6)-1)*y(26));
g1(16,4)=(-(params(7)*exp(params(6)*y(26)+y(4))));
g1(16,22)=exp(y(22));
g1(16,25)=(-((1-params(7))*(-params(6))*exp(y(25)*(-params(6)))));
g1(16,26)=(-(params(7)*params(6)*exp(params(6)*y(26)+y(4))));
g1(17,21)=(-exp(y(21)));
g1(17,22)=exp(y(23)+y(22));
g1(17,23)=exp(y(23)+y(22));
g1(18,6)=(-((1+exp(y(30)))*exp(y(6))));
g1(18,29)=exp(y(29));
g1(18,30)=(-(exp(y(30))*exp(y(6))));
g1(18,31)=(-exp(y(31)));
g1(18,32)=exp(y(32));
g1(18,43)=(-exp(y(43)));
g1(19,5)=(-((1-params(16))*params(12)));
g1(19,7)=(-params(16));
g1(19,31)=1;
g1(19,57)=(-1);
g1(20,6)=(-((1-params(17))*params(14)));
g1(20,31)=(-((1-params(17))*params(14)*params(13)));
g1(20,8)=(-params(17));
g1(20,32)=1;
g1(21,23)=(-((1-params(18))*params(11)));
g1(21,26)=(-((1-params(18))*params(10)));
g1(21,9)=(-params(18));
g1(21,34)=1;
g1(21,56)=1;
g1(22,48)=(-((-(exp(y(34))*exp(y(48))))/(exp(y(48))*exp(y(48)))));
g1(22,30)=exp(y(30));
g1(22,34)=(-(exp(y(34))/exp(y(48))));
g1(23,14)=(-exp(y(14)));
g1(23,1)=(-(exp(y(18))*T(8)));
g1(23,18)=(-(exp(y(18))+exp(y(18))*T(6)+exp(y(18))*T(10)));
g1(23,23)=exp(y(23));
g1(23,31)=(-exp(y(31)));
g1(24,14)=exp(y(14));
g1(24,37)=(-(exp(y(37))*(1-params(20))));
g1(24,38)=(-(exp(y(38))*params(20)));
g1(25,15)=exp(y(15));
g1(25,39)=(-((1-params(20))*exp(y(39))));
g1(25,40)=(-(params(20)*exp(y(40))));
g1(26,18)=exp(y(18));
g1(26,44)=(-((1-params(20))*exp(y(44))));
g1(27,19)=exp(y(19));
g1(27,41)=(-((1-params(20))*exp(y(41))));
g1(28,42)=(-(params(20)*exp(y(42))));
g1(28,43)=exp(y(43));
g1(29,17)=(-exp(y(17)+y(40)));
g1(29,38)=exp(y(38));
g1(29,40)=(-exp(y(17)+y(40)));
g1(29,42)=(-exp(y(42)));
g1(30,10)=(-params(15));
g1(30,35)=1;
g1(30,55)=(-1);
g1(31,11)=(-params(19));
g1(31,36)=1;
g1(31,58)=(-1);

end
