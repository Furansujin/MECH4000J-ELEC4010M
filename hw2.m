clc, clear all
%% Q3
%T_{ce} = T_{bc}^{-1}*T_{db}^{-1}*T_{de}
T_bc = [0, -1/sqrt(2), -1/sqrt(2), 30; 
        0, 1/sqrt(2), -1/sqrt(2), -40;
        1, 0, 0, 25;
        0, 0, 0, 1];
T_db = [0, 0, -1, 250; 
        0, -1, 0, -150;
        -1, 0, 0, 200;
        0, 0, 0, 1];
T_de = [0, 0, -1, 300; 
        0, -1, 0, 100;
        -1, 0, 0, 120;
        0, 0, 0, 1];

T_ce = T_bc\(T_db\T_de);

%% Q4
syms O_2 R_2 a_2 real
a_2 = (pi/2)-O_2;
rot_a2 = [cos(-a_2), 0, sin(-a_2);
     0, 1, 0;
     -sin(-a_2), 0, cos(-a_2)];
 
rot = rotx(90)*rot_a2;
rot = [sin(O_2), 0, -cos(O_2);
       -cos(O_2), 0, -sin(O_2);
       0, 1, 0];
rot = cat(1, rot, [0, 0, 0]);
T_02 = cat(2, rot, [-R_2*sin(O_2), R_2*cos(O_2), 0, 1]')

syms O_1 R_1 a_1 b_1 real
O_1 = 0;
R_1 = 1;
v0=[0, 0, 0, 1]';
for O_1 = 0:0.01:2*pi
    a_1 = (pi/2)-O_1;
    b_1 = (-O_1/3) + (pi/6);
    rot_a1 = [cos(-a_1), 0, sin(-a_1);
         0, 1, 0;
         -sin(-a_1), 0, cos(-a_1)];

    rot = rotx(120)*rot_a1;
    rot = [sin(O_1), 0, -cos(O_1);
            -(sqrt(3)/2)*cos(O_1), -0.5, -(sqrt(3)/2)*sin(O_1);
            -0.5*cos(O_1), (sqrt(3)/2), -(0.5)*sin(O_1)];
    rot = cat(1, rot, [0, 0, 0]);
    T_01 = cat(2, rot, [-R_1*cos(b_1)*sin(O_1), R_1*cos(b_1)*cos(O_1), R_1*sin(b_1), 1]')
    T_01_rich = cat(2, rot, [(-R_1*sin(O_1))', (R_1*cos(O_1)*sqrt(3)/2)', (R_1*cos(O_1)/2)', 1]')
    p = T_01*v0;
    p = p';
    plot3(p(1,1),p(1,2),p(1,3),'k.')
    hold on
    p = T_01_rich*v0;
    p = p';
    plot3(p(1,1),p(1,2),p(1,3),'b.')
end
% inv(T_02)*T_01_rich