  % public expenditure in final goods' production functino

function [res]=SolveSteadyState(x,ParaSet)
habit=ParaSet(1);
alpha=ParaSet(2);
beta=ParaSet(3);
delta=ParaSet(4);
phi=ParaSet(5);
epsilon=ParaSet(6);
BoverY=ParaSet(7);
Bphi=ParaSet(8);
gamma=ParaSet(9);
kappa_pi=ParaSet(10);
kappa_y=ParaSet(11);
kappag_y=ParaSet(12);
kappat_g=ParaSet(13);
kappat_b=ParaSet(14);
rho_A=ParaSet(15);
rho_g=ParaSet(16);
rho_t=ParaSet(17);
rho_rn=ParaSet(18);
rho_ksi=ParaSet(19);
eta=ParaSet(20);
site=ParaSet(21);
betaip=ParaSet(22);

h_ss=x(1,1);
rb_ss=1/beta-1;
rk_ss=1/beta-1+delta;
qk_ss=1;
pi_ss=1;
pistar_ss=1;
D_ss=1;
mc_ss=(epsilon-1)/epsilon;
w_ss=(1-alpha)*(((1+rk_ss-1+delta)^alpha)/(mc_ss*(alpha^alpha)))^(1/(alpha-1));
k_ss=h_ss*(alpha/(1-alpha))*w_ss/(1+rk_ss-1+delta);
i_ss=k_ss*delta;
y_ss=(k_ss^alpha)*(h_ss^(1-alpha));
Y_ss=y_ss;
g_ss=0.2*y_ss;
c_ss=Y_ss-g_ss-i_ss;
lamda_ss=(1-habit*beta)/c_ss/(1-habit);
f1_ss=(lamda_ss*mc_ss*Y_ss)/(1-beta*Bphi);
f2_ss=(lamda_ss*Y_ss)/(1-beta*Bphi);
b_ss=BoverY*Y_ss;
rn_ss=rb_ss;
hp_ss=(1-eta)*(1-alpha)*(y_ss/w_ss);
hip_ss=eta*(1-alpha)*(y_ss/w_ss);
cp_ss=(1-eta)*(site*(1-habit*beta)/((1-alpha)*(1-habit)))*((hp_ss)^(1+phi))/y_ss;
cip_ss=eta*(site*(1-habit*betaip)/((1-alpha)*(1-habit)))*((hp_ss)^(1+phi))/y_ss;
tranip_ss=c_ss-w_ss*hip_ss;
tran_ss=eta*tranip_ss;
tau_ss=g_ss+rb_ss*b_ss+tran_ss;
kp_ss=k_ss/(1-eta);
ip_ss=i_ss/(1-eta);
 
res(1,1)=site-lamda_ss*w_ss/(h_ss^phi);