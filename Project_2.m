%% Project 2
clear all, clc;

%% Define virtices for the polygon
v = [600, 0; 800, 100; 700, 300; 500, 310;];

%% Define friction coef u
u = 1;
ang = rad2deg(atan(u));

%% Plot polygon on x-y plane
polygon(v);
hold on

%% Determine if the 2 contact points are in force closure and plot the robot configuration
[x0, y0, x1, y1, fc] = det_fr_cls(v, 1, 4, 4, 8, ang);
plt_rbt(v, x0, y0, x1, y1, fc);