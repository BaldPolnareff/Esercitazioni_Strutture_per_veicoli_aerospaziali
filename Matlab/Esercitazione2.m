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
F_0 = 775000;  % [kg]

% durata lancio (stadio 1)
t_1 = 160;     % [s]

%% GRANDEZZE OPERATIVE %% 

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

[PHI LAMBDA] = eig (K, M, "qz"); % Risoluzione del problema agli autovalori
                                 % |K - (LAMBDA)*M| = 0
                                 % PHI é il vettore degli autovalori e rappresenta i modi
                                 % LAMBDA é la matrice diagonale degli autovalori e vale
                                 % (LAMBDA_i_j) = (OMEGA_i_j)²
                                 % OMEGA é la matrice diagonale delle frequenze naturali

OMEGA = sqrt(LAMBDA);            % Pulsazioni naturali

FREQ_NAT = OMEGA/(2*pi);        % Frequenze naturali
