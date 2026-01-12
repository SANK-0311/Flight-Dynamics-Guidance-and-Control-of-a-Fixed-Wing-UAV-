Variables

%% Transfer function constants
Gamma = Jx * Jz - Jxz*Jxz;
gamma1 = Jxz * (Jx - Jy + Jz) / Gamma;
gamma3 = Jz / Gamma;
gamma4 = Jxz / Gamma;
C_pp = gamma3 * C_lp + gamma4 * C_np;
C_pa = gamma3 * C_la + gamma4 * C_na;
a_phi1 = -1 * 0.5 * rho * Va^2 * S * b * C_pp * b / (2 * Va);
a_phi2 = 1 * 0.5 * rho * Va^2 * S * b * C_pa;

%% Control Constants
delta_a_max = deg2rad(45);
e_max = deg2rad(15);
k_p_phi = delta_a_max * sign(a_phi2) / e_max;
w_n_phi = sqrt(k_p_phi * a_phi2);
zeta_phi = 0.8; %as of now
k_d_phi = (2 * zeta_phi * w_n_phi - a_phi1) / a_phi2;

k_i_phi = 1.5;
sim("Auto_pilot.slx")