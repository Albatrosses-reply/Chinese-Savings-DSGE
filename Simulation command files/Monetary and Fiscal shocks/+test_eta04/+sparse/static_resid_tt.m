function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(1) = (exp(y(24))-exp(y(24))*params(1))^(-1);
T(2) = (exp(y(25))-params(1)*exp(y(25)))^(-1);
T(3) = params(2)/(1-params(2))*exp(y(4));
T(4) = (1+exp(y(20)))*exp(y(7))-exp(y(23)+y(7))*(1-params(4));
T(5) = T(3)/T(4);
T(6) = params(2)^(-params(2))*(1-params(2))^(params(2)-1);
T(7) = T(6)*exp((-y(22)));
T(8) = ((1+exp(y(20)))*exp(y(7)-y(23))-exp(y(7))*(1-params(4)))^params(2);
end
