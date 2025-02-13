function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test_eta04.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 17
    T = [T; NaN(17 - size(T, 1), 1)];
end
T(8) = params(8)/2*(-exp(y(36)-y(5)))*2*(exp(y(36)-y(5))-1);
T(9) = (-T(8));
T(10) = params(8)/2*exp(y(36)-y(5))*2*(exp(y(36)-y(5))-1);
T(11) = (-T(10));
T(12) = ((1+exp(y(51)))*exp(y(7))-exp(y(54)+y(38))*(1-params(4)))*((1+exp(y(51)))*exp(y(7))-exp(y(54)+y(38))*(1-params(4)));
T(13) = getPowerDeriv((1+exp(y(51)))*exp(y(7)-y(54))-(1-params(4))*exp(y(38)),params(2),1);
T(14) = getPowerDeriv(exp(y(55))-params(1)*exp(y(24)),(-1),1);
T(15) = getPowerDeriv(exp(y(86))-exp(y(55))*params(1),(-1),1);
T(16) = getPowerDeriv(exp(y(56))-params(1)*exp(y(25)),(-1),1);
T(17) = getPowerDeriv(exp(y(87))-params(1)*exp(y(56)),(-1),1);
end
