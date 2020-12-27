clc; clear all; close all;

%% DATI %%

% masse
m_1 = 445000; % [kg]
m_2 = 116000; % [kg]
m_3 = 2000;   % [kg]
m_4 = 15000;  % [kg]

% costanti elastiche
k_1 = 5e+8;   % [N/m]
k_2 = k_1;    % [N/m]
k_3 = 1e+8;   % [N/m]

% forzanti
F_0 = 775000 * 9.81;  % [N]

% durata lancio (stadio 1)
t_1 = 160;     % [s]

%% GRANDEZZE OPERATIVE %% 

F = [F_0, 0, 0, 0]';             % Vettore delle forze

M = [
    m_1 0 0 0, 
     0 m_2 0 0,                  % Matrice delle masse
     0 0 m_3 0,
     0 0 0 m_4
    ];

K = [
    k_1 -k_1 0 0
    -k_1 (k_1 + k_2) -k_2 0      % Matrice delle costanti elastiche
    0 -k_2 (k_2 + k_3) -k_3
    0 0 -k_3 k_3
    ];

[PHI LAMBDA] = eig(K, M); % Risoluzione del problema agli autovalori
                                 % |K - (LAMBDA)*M| = 0
                                 % PHI é il vettore degli autovalori e rappresenta i modi
                                 % LAMBDA é la matrice diagonale degli autovalori e vale
                                 % (LAMBDA_i_j) = (OMEGA_i_j)²
                                 % OMEGA é la matrice diagonale delle frequenze naturali

OMEGA = sqrt(LAMBDA);            % Pulsazioni naturali [s^(-1)]

FREQ_NAT = OMEGA / (2 * pi);         % Frequenze naturali [Hz]


%% GRANDEZZE GENERALIZZATE %%

M_gen = (PHI)' * M * PHI;        % Matrice Masse generalizzate
K_gen = (PHI)' * K * PHI;        % Matrice Rigidezze generalizzate
F_gen = (PHI)' * F;              % Forze generalizzate

% Le due matrici sono diagonali e PHI é M-normalizzata, i termini non
% nulli nelle posizioni non diagonali sono dovuti all'implementazione dell'
% algoritmo numerico, ma sono praticamente dei numeri talmente piccoli (inferiori alla
% precisione di macchina) da considerarsi nulli,
% pertanto sovrascrivo manualmente quei valori 
% con degli zeri per semplicitá espositiva

M_gen = eye(4);
K_gen = LAMBDA;

%% Equazione per trovare la componente i-esima del vettore
%% spostamento in coordinate generalizzate

% Tra 0 e 0.2 s
t_end_short = linspace(0, 0.2); 
Q_short_1 = F_gen(1) / M_gen(1, 1) .* t_end_short .^2 ./ 2;
Q_short = [Q_short_1; zeros(1, 100); zeros(1, 100); zeros(1, 100)];

for i = 2:4
    Q_short(i, :) = F_gen(i) / K_gen(i, i) * (1 - cos (OMEGA(i, i) .* t_end_short));
    i = i + 1;
end

X_short = PHI * Q_short;

figure()
for i = 1:4
    plot(t_end_short, X_short(i, :))
    hold on
end

legend('Stage 1','Stage 2','Fairing','Payload','Location','NorthWest')
ylabel('Displacement [km]')
xlabel('Time [s]')
title('Displacement over 0.2 seconds')

% Tra 0 e 160 s
t_end_long = linspace(0, 160); 
Q_long_1 = F_gen(1) / M_gen(1, 1) .* t_end_long .^2 ./ 2;
Q_long = [Q_long_1; zeros(1, 100); zeros(1, 100); zeros(1, 100)];
for i = 2:4
    Q_long(i, :) = F_gen(i) / K_gen(i, i) * (1 - cos (OMEGA(i, i) * t_end_long));
    i = i + 1;
end

X_long = PHI * Q_long;

figure()
for i = 1:4
    plot(t_end_long, X_long(i, :))
    hold on
end

legend('Stage 1','Stage 2','Fairing','Payload','Location','NorthWest')
ylabel('Displacement [km]')
xlabel('Time [s]')
title('Displacement over 160 seconds')
