function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test_eta04.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(9) = getPowerDeriv((1+exp(y(20)))*exp(y(7)-y(23))-exp(y(7))*(1-params(4)),params(2),1);
T(10) = (exp(y(24))-exp(y(24))*params(1))*getPowerDeriv(exp(y(24))-exp(y(24))*params(1),(-1),1);
T(11) = (exp(y(25))-params(1)*exp(y(25)))*getPowerDeriv(exp(y(25))-params(1)*exp(y(25)),(-1),1);
end
