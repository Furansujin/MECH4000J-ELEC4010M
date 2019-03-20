function plt = fwd_kin(l, m, n, o, p, q, r, s)

v0 = [0,0,0,1]';

l = (l*pi)/180;
m = (m*pi)/180;
n = (n*pi)/180;
o = (o*pi)/180;
p = (p*pi)/180;
q = (q*pi)/180;
r = (r*pi)/180;

% t01 = [cos(l), -sin(l), 0, 0; sin(l), cos(l), 0, 0; 0, 0, 1, 0.27035; 0, 0, 0, 1];
% t12 = [cos(m), 0, sin(m), 0.069; 0, 1, 0, 0; -sin(m), 0, cos(m), 0; 0, 0, 0, 1];
% t23 = [1, 0, 0, 0.36435; 0, cos(n), -sin(n), 0; 0, sin(n), cos(n), 0; 0, 0, 0, 1];
% t34 = [cos(o), 0, sin(o), 0; 0, 1, 0, 0; -sin(o), 0, cos(o), -0.069; 0, 0, 0, 1];
% t45 = [1, 0, 0, 0.37429; 0, cos(p), -sin(p), 0; 0, sin(p), cos(p), 0; 0, 0, 0, 1];
% t56 = [cos(q), 0, sin(q), 0; 0, 1, 0, 0; -sin(q), 0, cos(q), -0.01; 0, 0, 0, 1];
% t67 = [1, 0, 0, 0.3683; 0, cos(r), -sin(r), 0; 0, sin(r), cos(r), 0; 0, 0, 0, 1];

t01 = [cos(l), -sin(l), 0, 0; sin(l), cos(l), 0, 0; 0, 0, 1, 270.35; 0, 0, 0, 1];
t12 = [cos(m), 0, sin(m), 69; 0, 1, 0, 0; -sin(m), 0, cos(m), 0; 0, 0, 0, 1];
t23 = [1, 0, 0, 364.35; 0, cos(n), -sin(n), 0; 0, sin(n), cos(n), 0; 0, 0, 0, 1];
t34 = [cos(o), 0, sin(o), 0; 0, 1, 0, 0; -sin(o), 0, cos(o), -69; 0, 0, 0, 1];
t45 = [1, 0, 0, 374.29; 0, cos(p), -sin(p), 0; 0, sin(p), cos(p), 0; 0, 0, 0, 1];
t56 = [cos(q), 0, sin(q), 0; 0, 1, 0, 0; -sin(q), 0, cos(q), -10; 0, 0, 0, 1];
t67 = [1, 0, 0, 368.3; 0, cos(r), -sin(r), 0; 0, sin(r), cos(r), 0; 0, 0, 0, 1];

v1 = t01*v0;
v2 = t01*t12*v0;
v3 = t01*t12*t23*v0;
v4 = t01*t12*t23*t34*v0;
v5 = t01*t12*t23*t34*t45*v0;
v6 = t01*t12*t23*t34*t45*t56*v0;
v7 = t01*t12*t23*t34*t45*t56*t67*v0;

v=[v7';v6';v5';v4';v3';v2';v1';v0'];
plot3(v(1,1),v(1,2),v(1,3),'k.');
plt = plot3(v(:,1),v(:,2),v(:,3),s,'LineWidth',3);
axis equal
end