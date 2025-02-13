function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = params(2)/(1-params(2))*exp(y(35));
T(2) = T(1)/((1+exp(y(51)))*exp(y(7))-exp(y(54)+y(38))*(1-params(4)));
T(3) = params(2)^(-params(2))*(1-params(2))^(params(2)-1);
T(4) = T(3)*exp((-y(53)));
T(5) = ((1+exp(y(51)))*exp(y(7)-y(54))-(1-params(4))*exp(y(38)))^params(2);
T(6) = params(8)/2*(exp(y(36)-y(5))-1)^2;
T(7) = 1-T(6);
end
