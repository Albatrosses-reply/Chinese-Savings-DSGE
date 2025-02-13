function [residual, g1] = dynamic_resid_g1(T, y, x, params, steady_state, it_, T_flag)
% function [residual, g1] = dynamic_resid_g1(T, y, x, params, steady_state, it_, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = test_eta04.dynamic_g1_tt(T, y, x, params, steady_state, it_);
    end
    residual = test_eta04.dynamic_resid(T, y, x, params, steady_state, it_, false);
    g1       = test_eta04.dynamic_g1(T, y, x, params, steady_state, it_, false);

end
