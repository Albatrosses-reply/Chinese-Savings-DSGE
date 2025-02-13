function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(7, 1);
lhs = NaN(31, 1);
rhs = NaN(31, 1);
T(1) = params(2)/(1-params(2))*exp(y(35));
T(2) = T(1)/((1+exp(y(51)))*exp(y(7))-exp(y(54)+y(38))*(1-params(4)));
T(3) = params(2)^(-params(2))*(1-params(2))^(params(2)-1);
T(4) = T(3)*exp((-y(53)));
T(5) = ((1+exp(y(51)))*exp(y(7)-y(54))-(1-params(4))*exp(y(38)))^params(2);
T(6) = params(8)/2*(exp(y(36)-y(5))-1)^2;
T(7) = 1-T(6);
lhs(1) = exp(y(34));
rhs(1) = (exp(y(55))-params(1)*exp(y(24)))^(-1)-params(1)*params(3)*(exp(y(86))-exp(y(55))*params(1))^(-1);
lhs(2) = params(9)*exp(params(5)*y(57));
rhs(2) = exp(y(34)+y(35));
lhs(3) = 1;
rhs(3) = params(3)*exp(y(65)-y(34))*(1+exp(y(82))-params(4));
lhs(4) = 1;
rhs(4) = params(3)*exp(y(65)-y(34))*(1+exp(y(79)));
lhs(5) = exp(y(34));
rhs(5) = (exp(y(56))-params(1)*exp(y(25)))^(-1)-params(1)*params(22)*(exp(y(87))-params(1)*exp(y(56)))^(-1);
lhs(6) = params(9)*exp(params(5)*y(58));
rhs(6) = exp(y(34)+y(35));
lhs(7) = exp(y(39));
rhs(7) = exp(y(53)+params(2)*(y(54)+y(6))+(1-params(2))*y(33));
lhs(8) = exp(y(6)-y(33));
rhs(8) = T(2);
lhs(9) = exp(y(42));
rhs(9) = T(4)*exp(y(35)*(1-params(2)))*T(5);
lhs(10) = exp(y(37));
rhs(10) = (1-params(4))*exp(y(54)+y(6))+exp(y(36))*T(7);
lhs(11) = exp((-y(38)));
rhs(11) = T(7)-(exp(y(36)-y(5))-1)*params(8)*exp(y(36)-y(5))+params(8)*params(3)*exp(y(65)-y(34))*exp(y(69)-y(38))*exp(2*(y(67)-y(36)))*(exp(y(67)-y(36))-1);
lhs(12) = exp(y(43));
rhs(12) = params(6)/(params(6)-1)*exp(y(45)-y(46));
lhs(13) = exp(y(45));
rhs(13) = exp(y(34)+y(42)+y(41))+params(3)*params(7)*exp(params(6)*y(75)+y(76));
lhs(14) = exp(y(46));
rhs(14) = exp(y(34)+y(41))+params(3)*params(7)*exp((params(6)-1)*y(75)+y(77));
lhs(15) = (1-params(7))*exp(y(43)*(1-params(6)))+params(7)*exp((params(6)-1)*y(44));
rhs(15) = 1;
lhs(16) = exp(y(40));
rhs(16) = (1-params(7))*exp(y(43)*(-params(6)))+params(7)*exp(params(6)*y(44)+y(9));
lhs(17) = exp(y(41)+y(40));
rhs(17) = exp(y(39));
lhs(18) = exp(y(47))+exp(y(50));
rhs(18) = exp(y(49))+(1+exp(y(48)))*exp(y(16))+exp(y(61));
lhs(19) = y(49)-log(params(41));
rhs(19) = params(16)*(y(18)-log(params(41)))+(1-params(16))*params(12)*(y(10)-log(params(33)))+x(3);
lhs(20) = y(50)-log(params(42));
rhs(20) = params(17)*(y(19)-log(params(42)))+(1-params(17))*params(14)*(y(16)-log(params(39))+(y(49)-log(params(41)))*params(13));
lhs(21) = y(52)-log(params(44));
rhs(21) = params(18)*(y(21)-log(params(44)))+(1-params(18))*(y(44)*params(10)+params(11)*(y(41)-log(params(33))))-x(2);
lhs(22) = exp(y(48));
rhs(22) = exp(y(52))/exp(y(75));
lhs(23) = exp(y(41));
rhs(23) = exp(y(49))+exp(y(36))+exp(y(32))+exp(y(36))*T(6);
lhs(24) = exp(y(32));
rhs(24) = exp(y(55))*(1-params(20))+exp(y(56))*params(20);
lhs(25) = exp(y(33));
rhs(25) = (1-params(20))*exp(y(57))+params(20)*exp(y(58));
lhs(26) = exp(y(36));
rhs(26) = (1-params(20))*exp(y(62));
lhs(27) = exp(y(37));
rhs(27) = (1-params(20))*exp(y(59));
lhs(28) = exp(y(61));
rhs(28) = params(20)*exp(y(60));
lhs(29) = exp(y(56));
rhs(29) = exp(y(60))+exp(y(35)+y(58));
lhs(30) = y(53);
rhs(30) = params(15)*y(22)+x(1);
lhs(31) = y(54);
rhs(31) = params(19)*y(23)+x(4);
end
