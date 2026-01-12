clc
Va          = 10;
Mass		= 1.56 		;
CL0 		= 0.09167   ;
CY0 		=0			;
CD0 		=0.01631    ;
Cl0 		=0          ;
Cm0 		=-0.02338   ;
Cn0 		=0          ;
CLa         =3.5016     ;
CYb         =-0.07359   ;
CDa 		=0.2108     ;
Clb			=-0.02854   ;
Cma 		=-0.5675    ;
Cnb 		=-0.00040   ;
CLq 		=2.8932     ;
CYp			=0          ;
CDq  		=0          ;
Clp 		=-0.3209    ;
Cmq 		=-1.3990    ;
Cnp 		=-0.01297   ;
CYr 		=0          ;
Clr			= 0.03066   ;

alpha0 		=0.4712     ;
CLde 		=0.2724     ;
Clda 		=0.1682     ;
Cnda 		=-0.00328   ;
CDde 		=0.3045     ;


Jx			=0.1147     ;
Jy			=0.0576     ;
Jz			=0.1712     ;
Jxz 		=0.0015     ;
b 			=1.4224     ;
S			= 0.2589    ;
c 			=0.3302     ;
sprop 			=0.0314 ;
rho			=1.2682 ;

kmotor 		=20         ;
kTp		    =0          ;
Cmde 		=-0.3254    ;
Cnr 		=-0.00434   ;
komega      =0          ;
Cprop 		=1.0        ;
CYda 		=0          ;
e 			=0.9        ;
M 			=50         ;

eps		    = 0.1592    ;
CDp			=0.0254     ;
g=9.81;
delta_a_max = 45;
delta_e_max = 45;
error_teta_max = 10;
error_phi_max = 10;

%%
% aph2= 0.5*rho*(Va^2)*S*b*Cpp*(b/(2*Va))
ath1= -(1/2/Jy)*rho*(Va^2)*S*c*Cmq*(b/(2*Va));
ath2= -(1/2/Jy)*rho*(Va^2)*S*c*Cma;
ath3= +(1/2/Jy)*rho*(Va^2)*S*c*Cmde;

%% Control Gains

% Inner Loop
zeta_teta = 0.7;
k_p_teta = delta_e_max * sign(ath3) / error_teta_max;
w_n_teta = sqrt(ath2 + (k_p_teta) * sign(k_p_teta) * abs(ath3));
k_d_teta = (2 * zeta_teta * w_n_teta - ath1) / ath3;

% Outer Loop
k_teta_DC = k_p_teta * ath3 / (ath2 + k_p_teta * ath3);
zeta_n_h =  1;
W_h = 7;
w_n_h = w_n_teta / W_h;
k_p_h = 2 * zeta_n_h * w_n_h / (k_teta_DC * Va);
k_i_h = w_n_h^2 / (k_teta_DC * Va);



