%% Project 1
clc, clear all

%% Forward Kinematics
figure(1);
fwd_kin(0,0,0,0,0,0,0, 'r');
hold on;

%% Point Cloud
figure(2);
tic;
p = p_cloud(10);
toc;
%% Inverse Kinematics
figure(1);
pl = inv_kin(807.6, 0, 191.4, p,  10, 'r');

%% Write MA INITIALS BITCH ASS BAXTER
wrt_init(5, p);