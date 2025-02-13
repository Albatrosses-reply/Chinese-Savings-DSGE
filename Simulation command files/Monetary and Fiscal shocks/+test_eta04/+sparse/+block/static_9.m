function [y, T, residual, g1] = static_9(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  T(56)=exp(y(16));
  T(57)=exp(y(19));
  residual(1)=(T(56)+T(57))-(T(43)+(1+T(2))*T(56)+T(55));
  T(58)=y(19)-log(params(42));
  residual(2)=(T(58))-(T(58)*params(17)+(1-params(17))*params(14)*(y(16)-log(params(39))+T(38)*params(13)));
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=T(57);
g1_v(2)=1-params(17);
g1_v(3)=T(56)-(1+T(2))*T(56);
g1_v(4)=(-((1-params(17))*params(14)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
