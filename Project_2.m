clear all, clc;
v = [600, 0; 800, 200; 700, 300];
ang = 30;
polygon(v);
hold on
x1 = [v(3,1), v(1,1)];
y1 = [v(3,2), v(1,2)];
[n, l, m] = plt_cone(ang, x1, y1, 5, v, 'r');
hold on
x1 = [v(1,1), v(2,1)];
y1 = [v(1,2), v(2,2)];
[n1, l1, m1] = plt_cone(ang, x1, y1, 7, v, 'g');

plot([l, l1], [m, m1], 'k');

coef = polyfit([l, l1], [m, m1], 1);

o = -1/n(1);
o1 = -1/n1(1);
t = atan((coef(1)-(o))/(1+(o*coef(1))));
t1 = atan((coef(1)-(o1))/(1+(o1*coef(1))));

if abs(rad2deg(t)) < ang && abs(rad2deg(t1)) < ang
    fprintf("force closure")
    inv_kin(l, m, 0, [],  1, 'b');
else
    fprintf("not force closure")
end