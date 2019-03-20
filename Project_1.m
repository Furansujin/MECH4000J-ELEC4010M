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
st = 5;
x = [(0:st:50), (50:-st:25), 25*ones(1,length(200:-st:150)), (55:st:105), 105*ones(1, length(150:st:175)), (105:-st:55), 55*ones(1, length(175:st:200)), (55:st:105)];
y = [200*ones(1,length(0:st:50)), 200*ones(1,length(50:-st:25)), (200:-st:150), 150*ones(1, length(55:st:105)), (150:st:175), 175*ones(1, length(105:-st:55)), (175:st:200), 200*ones(1, length(55:st:105))];
z = zeros(1, length(x));
T = horzcat(x', y', z');
for i = 1:length(T(:,1))
    if i == 1
        plt = inv_kin(T(i,1), T(i,2), T(i,3), p, 1, 'b');
        pause(0.0001)
    else
        delete(plt);
        plt = inv_kin(T(i,1), T(i,2), T(i,3), p, 1, 'b');
        pause(0.0001);
    end
end