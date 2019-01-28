close all
clear all

n_oxide = 1.46;   %index of refraction
n_Si = 3.42;

lambda_1 = [0.25:.001:0.75] .* 10^-6; %wavelength of light
lambda_2 = lambda_1 ./ n_oxide;

d_oxide = [0.25 0.5 0.75 1.0] .* 10^-6; %thickness of oxide

eta_0 = 377;
eta_1 = 377;
eta_2 = eta_0/n_oxide;
eta_3 = eta_0/n_Si;

Z_2 = eta_2 .* ((eta_3 + j*eta_2 .* tan(2*pi ./ lambda_2.' * d_oxide)) ./ (eta_2 + j*eta_3 .* tan(2*pi ./ lambda_2.' * d_oxide)));

gamma_eff = (Z_2 - eta_1) ./ (Z_2 + eta_1);

figure(1)
subplot(2,2,1),plot(lambda_1, abs(gamma_eff(:,1)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .25 \mum')
subplot(2,2,2),plot(lambda_1, abs(gamma_eff(:,2)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .50 \mum')
subplot(2,2,3),plot(lambda_1, abs(gamma_eff(:,3)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .75 \mum')
subplot(2,2,4),plot(lambda_1, abs(gamma_eff(:,4)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = 1.0 \mum')

eta_3 = 10 - 10j;

Z_2 = eta_2 .* ((eta_3 + j*eta_2 .* tan(2*pi ./ lambda_2.' * d_oxide)) ./ (eta_2 + j*eta_3 .* tan(2*pi ./ lambda_2.' * d_oxide)));

gamma_eff = (Z_2 - eta_1) ./ (Z_2 + eta_1);

figure(2)
subplot(2,2,1),plot(lambda_1, abs(gamma_eff(:,1)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .25 \mum')
subplot(2,2,2),plot(lambda_1, abs(gamma_eff(:,2)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .50 \mum')
subplot(2,2,3),plot(lambda_1, abs(gamma_eff(:,3)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .75 \mum')
subplot(2,2,4),plot(lambda_1, abs(gamma_eff(:,4)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = 1.0 \mum')

eta_3 = 50 + 50j;

Z_2 = eta_2 .* ((eta_3 + j*eta_2 .* tan(2*pi ./ lambda_2.' * d_oxide)) ./ (eta_2 + j*eta_3 .* tan(2*pi ./ lambda_2.' * d_oxide)));

gamma_eff = (Z_2 - eta_1) ./ (Z_2 + eta_1);

figure(3)
subplot(2,2,1),plot(lambda_1, abs(gamma_eff(:,1)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .25 \mum')
subplot(2,2,2),plot(lambda_1, abs(gamma_eff(:,2)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .50 \mum')
subplot(2,2,3),plot(lambda_1, abs(gamma_eff(:,3)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = .75 \mum')
subplot(2,2,4),plot(lambda_1, abs(gamma_eff(:,4)).^2),xlabel('\lambda_1 [m]'),ylabel('|\Gamma_e_f_f|^2'),title('d = 1.0 \mum')

