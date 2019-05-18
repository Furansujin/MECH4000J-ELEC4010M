%% Project 2
clear all, clc;

%% User Input
v = input('Input vertices eg. [0, 0; 600, 100; 900, 300; 300, 200]: ');
u = input('Friction Coefficient from 0 < u < 10^17: ');
a = input('Input line segment of choice 1 (from 1 to number of vertices) and a point on that line segment(from 2 to 8) eg. [1,8]: ');
b = input('Input line segment of choice 2(from 1 to number of vertices) and a point on that line segment(from 2 to 8) eg. [3,8]: ');

%% Define vertices for the polygon
% v = [0, 0; 600, 100; 900, 300; 300, 200;];

%% Define friction coef u
% u = 0.5;
ang = rad2deg(atan(u));

%% Plot polygon on x-y plane
polygon(v);
hold on

%% Determine if the 2 contact points are in force closure and plot the robot configuration
[x0, y0, x1, y1, fc] = det_fr_cls(v, a(1), b(1), a(2), b(2), ang);
plt_rbt(v, x0, y0, x1, y1, fc);