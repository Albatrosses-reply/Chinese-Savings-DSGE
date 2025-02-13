function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(17, 1);
end
[T_order, T] = test_eta04.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(123, 1);
g1_v(1)=(-(exp(y(36))*T(9)));
g1_v(2)=(-(T(9)-(params(8)*exp(y(36)-y(5))*(-exp(y(36)-y(5)))+(exp(y(36)-y(5))-1)*params(8)*(-exp(y(36)-y(5))))));
g1_v(3)=(-(exp(y(36))*T(8)));
g1_v(4)=(-(params(2)*exp(y(53)+params(2)*(y(54)+y(6))+(1-params(2))*y(33))));
g1_v(5)=exp(y(6)-y(33));
g1_v(6)=(-((1-params(4))*exp(y(54)+y(6))));
g1_v(7)=(-((-(T(1)*(1+exp(y(51)))*exp(y(7))))/T(12)));
g1_v(8)=(-(T(4)*exp(y(35)*(1-params(2)))*(1+exp(y(51)))*exp(y(7)-y(54))*T(13)));
g1_v(9)=(-(params(7)*exp(params(6)*y(44)+y(9))));
g1_v(10)=(-((1-params(16))*params(12)));
g1_v(11)=(-((1+exp(y(48)))*exp(y(16))));
g1_v(12)=(-((1-params(17))*params(14)));
g1_v(13)=(-params(16));
g1_v(14)=(-params(17));
g1_v(15)=(-params(18));
g1_v(16)=(-params(15));
g1_v(17)=(-params(19));
g1_v(18)=(-((-(params(1)*exp(y(24))))*T(14)));
g1_v(19)=(-((-(params(1)*exp(y(25))))*T(16)));
g1_v(20)=(-exp(y(32)));
g1_v(21)=exp(y(32));
g1_v(22)=(-((1-params(2))*exp(y(53)+params(2)*(y(54)+y(6))+(1-params(2))*y(33))));
g1_v(23)=(-exp(y(6)-y(33)));
g1_v(24)=exp(y(33));
g1_v(25)=exp(y(34));
g1_v(26)=(-exp(y(34)+y(35)));
g1_v(27)=(-((1+exp(y(82))-params(4))*params(3)*(-exp(y(65)-y(34)))));
g1_v(28)=(-((1+exp(y(79)))*params(3)*(-exp(y(65)-y(34)))));
g1_v(29)=exp(y(34));
g1_v(30)=(-exp(y(34)+y(35)));
g1_v(31)=(-((exp(y(67)-y(36))-1)*params(8)*exp(2*(y(67)-y(36)))*exp(y(69)-y(38))*params(3)*(-exp(y(65)-y(34)))));
g1_v(32)=(-exp(y(34)+y(42)+y(41)));
g1_v(33)=(-exp(y(34)+y(41)));
g1_v(34)=(-exp(y(34)+y(35)));
g1_v(35)=(-exp(y(34)+y(35)));
g1_v(36)=(-T(2));
g1_v(37)=(-(T(5)*T(4)*(1-params(2))*exp(y(35)*(1-params(2)))));
g1_v(38)=(-exp(y(35)+y(58)));
g1_v(39)=(-(exp(y(36))*T(7)+exp(y(36))*T(11)));
g1_v(40)=(-(T(11)-((exp(y(36)-y(5))-1)*params(8)*exp(y(36)-y(5))+exp(y(36)-y(5))*params(8)*exp(y(36)-y(5)))+(exp(y(67)-y(36))-1)*params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*(-2)+params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*(-exp(y(67)-y(36)))));
g1_v(41)=(-(exp(y(36))+exp(y(36))*T(6)+exp(y(36))*T(10)));
g1_v(42)=exp(y(36));
g1_v(43)=exp(y(37));
g1_v(44)=exp(y(37));
g1_v(45)=(-((-(T(1)*(-(exp(y(54)+y(38))*(1-params(4))))))/T(12)));
g1_v(46)=(-(T(4)*exp(y(35)*(1-params(2)))*T(13)*(-((1-params(4))*exp(y(38))))));
g1_v(47)=(-exp((-y(38))))-(exp(y(67)-y(36))-1)*params(8)*exp(2*(y(67)-y(36)))*params(3)*exp(y(65)-y(34))*(-exp(y(69)-y(38)));
g1_v(48)=exp(y(39));
g1_v(49)=(-exp(y(39)));
g1_v(50)=exp(y(40));
g1_v(51)=exp(y(41)+y(40));
g1_v(52)=(-exp(y(34)+y(42)+y(41)));
g1_v(53)=(-exp(y(34)+y(41)));
g1_v(54)=exp(y(41)+y(40));
g1_v(55)=(-((1-params(18))*params(11)));
g1_v(56)=exp(y(41));
g1_v(57)=exp(y(42));
g1_v(58)=(-exp(y(34)+y(42)+y(41)));
g1_v(59)=exp(y(43));
g1_v(60)=(1-params(7))*(1-params(6))*exp(y(43)*(1-params(6)));
g1_v(61)=(-((1-params(7))*(-params(6))*exp(y(43)*(-params(6)))));
g1_v(62)=params(7)*(params(6)-1)*exp((params(6)-1)*y(44));
g1_v(63)=(-(params(7)*params(6)*exp(params(6)*y(44)+y(9))));
g1_v(64)=(-((1-params(18))*params(10)));
g1_v(65)=(-(params(6)/(params(6)-1)*exp(y(45)-y(46))));
g1_v(66)=exp(y(45));
g1_v(67)=(-(params(6)/(params(6)-1)*(-exp(y(45)-y(46)))));
g1_v(68)=exp(y(46));
g1_v(69)=exp(y(47));
g1_v(70)=(-(exp(y(48))*exp(y(16))));
g1_v(71)=exp(y(48));
g1_v(72)=(-exp(y(49)));
g1_v(73)=1;
g1_v(74)=(-((1-params(17))*params(14)*params(13)));
g1_v(75)=(-exp(y(49)));
g1_v(76)=exp(y(50));
g1_v(77)=1;
g1_v(78)=(-((-(T(1)*exp(y(51))*exp(y(7))))/T(12)));
g1_v(79)=(-(T(4)*exp(y(35)*(1-params(2)))*T(13)*exp(y(51))*exp(y(7)-y(54))));
g1_v(80)=1;
g1_v(81)=(-(exp(y(52))/exp(y(75))));
g1_v(82)=(-exp(y(53)+params(2)*(y(54)+y(6))+(1-params(2))*y(33)));
g1_v(83)=(-(T(5)*exp(y(35)*(1-params(2)))*T(3)*(-exp((-y(53))))));
g1_v(84)=1;
g1_v(85)=(-(params(2)*exp(y(53)+params(2)*(y(54)+y(6))+(1-params(2))*y(33))));
g1_v(86)=(-((-(T(1)*(-(exp(y(54)+y(38))*(1-params(4))))))/T(12)));
g1_v(87)=(-(T(4)*exp(y(35)*(1-params(2)))*T(13)*(1+exp(y(51)))*(-exp(y(7)-y(54)))));
g1_v(88)=(-((1-params(4))*exp(y(54)+y(6))));
g1_v(89)=1;
g1_v(90)=(-(exp(y(55))*T(14)-params(1)*params(3)*(-(exp(y(55))*params(1)))*T(15)));
g1_v(91)=(-(exp(y(55))*(1-params(20))));
g1_v(92)=(-(exp(y(56))*T(16)-params(1)*params(22)*(-(params(1)*exp(y(56))))*T(17)));
g1_v(93)=(-(exp(y(56))*params(20)));
g1_v(94)=exp(y(56));
g1_v(95)=params(9)*params(5)*exp(params(5)*y(57));
g1_v(96)=(-((1-params(20))*exp(y(57))));
g1_v(97)=params(9)*params(5)*exp(params(5)*y(58));
g1_v(98)=(-(params(20)*exp(y(58))));
g1_v(99)=(-exp(y(35)+y(58)));
g1_v(100)=(-((1-params(20))*exp(y(59))));
g1_v(101)=(-(params(20)*exp(y(60))));
g1_v(102)=(-exp(y(60)));
g1_v(103)=(-exp(y(61)));
g1_v(104)=exp(y(61));
g1_v(105)=(-((1-params(20))*exp(y(62))));
g1_v(106)=(-(params(3)*exp(y(65)-y(34))*(1+exp(y(82))-params(4))));
g1_v(107)=(-(params(3)*exp(y(65)-y(34))*(1+exp(y(79)))));
g1_v(108)=(-(params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*(exp(y(67)-y(36))-1)));
g1_v(109)=(-((exp(y(67)-y(36))-1)*params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*2*exp(2*(y(67)-y(36)))+params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*exp(y(67)-y(36))));
g1_v(110)=(-(params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*(exp(y(67)-y(36))-1)));
g1_v(111)=(-(params(3)*params(7)*params(6)*exp(params(6)*y(75)+y(76))));
g1_v(112)=(-(params(3)*params(7)*(params(6)-1)*exp((params(6)-1)*y(75)+y(77))));
g1_v(113)=(-((-(exp(y(52))*exp(y(75))))/(exp(y(75))*exp(y(75)))));
g1_v(114)=(-(params(3)*params(7)*exp(params(6)*y(75)+y(76))));
g1_v(115)=(-(params(3)*params(7)*exp((params(6)-1)*y(75)+y(77))));
g1_v(116)=(-(params(3)*exp(y(65)-y(34))*exp(y(79))));
g1_v(117)=(-(params(3)*exp(y(65)-y(34))*exp(y(82))));
g1_v(118)=params(1)*params(3)*exp(y(86))*T(15);
g1_v(119)=params(1)*params(22)*exp(y(87))*T(17);
g1_v(120)=(-1);
g1_v(121)=1;
g1_v(122)=(-1);
g1_v(123)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 31, 97);
end
