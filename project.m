clc; clear; close all;

% Parameters (fixed in paper)
alpha = 0.3;
beta  = 0.6;
delta = 10;

% Solver accuracy
options = odeset('RelTol',1e-8,'AbsTol',1e-10);

%% ==============================
% CASE 1: γ = 2  (Fig. 7)
% Tumor explosion (short time)
%% ==============================

gamma = 2;
tspan = [0 20];
init  = [11.56 11 0.00001];   % chosen to match paper behavior

[t, sol] = ode45(@(t,X) tumor_system(t,X,alpha,beta,gamma,delta), tspan, init, options);

plot_case(t, sol, gamma, tspan, 'Explosion (Fig.7)', true);


%% ==============================
% CASE 2: γ = 3.5  (Fig. 8)
% Large tumor stable
%% ==============================

gamma = 3.5;
tspan = [0 200];
init  = [10 9 2];

[t, sol] = ode45(@(t,X) tumor_system(t,X,alpha,beta,gamma,delta), tspan, init, options);

plot_case(t, sol, gamma, tspan, 'Large Tumor (Fig.8)', false);


%% ==============================
% CASE 3: γ = 4  (Fig. 9)
% Oscillations
%% ==============================

gamma = 4;
tspan = [0 80];
init  = [5.1 9.6 1.7];

[t, sol] = ode45(@(t,X) tumor_system(t,X,alpha,beta,gamma,delta), tspan, init, options);

plot_case(t, sol, gamma, tspan, 'Oscillation (Fig.9)', false);


%% ==============================
% CASE 4: γ = 5  (Fig. 10)
% Small tumor stable
%% ==============================

gamma = 5;
tspan = [0 200];
init  = [2.2 8 0.04];

[t, sol] = ode45(@(t,X) tumor_system(t,X,alpha,beta,gamma,delta), tspan, init, options);

plot_case(t, sol, gamma, tspan, 'Small Tumor (Fig.10)', false);


%% ==============================
% CASE 5: γ = 6.2  (Fig. 11)
% Tumor-free stable
%% ==============================

gamma = 6.2;
tspan = [0 10];
init  = [6 8 10];

[t, sol] = ode45(@(t,X) tumor_system(t,X,alpha,beta,gamma,delta), tspan, init, options);

plot_case(t, sol, gamma, tspan, 'Tumor Free (Fig.11)', false);