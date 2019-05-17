function points = p_cloud(z)

a = linspace(-141,51,z)*pi/180;
b = linspace(-123,60,z)*pi/180;
c = linspace(-173,173,z)*pi/180;
d = linspace(-3,150,z)*pi/180;
e = linspace(-175,175,z)*pi/180;
f = linspace(-90,120,z)*pi/180;
g = linspace(-175,175,z)*pi/180;

[T1,T2,T3,T4,T5,T6]=ndgrid(a,b,c,d,e,f);

l = T1;
m = T2;
n = T3;
o = T4;
p = T5;
q = T6;
xM = 69.*cos(l) - 10.*cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) - (3683.*cos(q).*(sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) - cos(l).*cos(m).*cos(o)))/10 - 69.*sin(l).*sin(n) - (3683.*sin(q).*(cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) + sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n))))/10 - (37429.*sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)))/100 - 10.*sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n)) + (7287.*cos(l).*cos(m))/20 + (37429.*cos(l).*cos(m).*cos(o))/100 - 69.*cos(l).*cos(n).*sin(m);
yM = 69.*sin(l) + (7287.*cos(m).*sin(l))/20 + 69.*cos(l).*sin(n) + 10.*cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + (3683.*cos(q).*(sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) + cos(m).*cos(o).*sin(l)))/10 + (3683.*sin(q).*(cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n))))/10 + (37429.*sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)))/100 + 10.*sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n)) + (37429.*cos(m).*cos(o).*sin(l))/100 - 69.*cos(n).*sin(l).*sin(m); 
zM = (3683.*sin(q).*(cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) + cos(m).*sin(n).*sin(p)))/10 - 69.*cos(m).*cos(n) - (37429.*cos(o).*sin(m))/100 - (7287.*sin(m))/20 + 10.*cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) - (3683.*cos(q).*(cos(o).*sin(m) + cos(m).*cos(n).*sin(o)))/10 - (37429.*cos(m).*cos(n).*sin(o))/100 + 10.*cos(m).*sin(n).*sin(p) + 5407/20; 
% p = zM(:) > 0;
% plot3(xM(:).*p,yM(:).*p,zM(:).*p,'k.')
plot3(xM(:),yM(:),zM(:),'k.');
axis equal
points = [xM(:),yM(:),zM(:)];

% syms l m n o p q real
% 
% % l = 0;
% % m = 0;
% % n = 0;
% % o = 0;
% % p = 0;
% % q = 0;
% r = 0; 
% 
% % t01 = [cos(l), -sin(l), 0, 0; sin(l), cos(l), 0, 0; 0, 0, 1, 0.27035; 0, 0, 0, 1];
% % t12 = [cos(m), 0, sin(m), 0.069; 0, 1, 0, 0; -sin(m), 0, cos(m), 0; 0, 0, 0, 1];
% % t23 = [1, 0, 0, 0.36435; 0, cos(n), -sin(n), 0; 0, sin(n), cos(n), 0; 0, 0, 0, 1];
% % t34 = [cos(o), 0, sin(o), 0; 0, 1, 0, 0; -sin(o), 0, cos(o), -0.069; 0, 0, 0, 1];
% % t45 = [1, 0, 0, 0.37429; 0, cos(p), -sin(p), 0; 0, sin(p), cos(p), 0; 0, 0, 0, 1];
% % t56 = [cos(q), 0, sin(q), 0; 0, 1, 0, 0; -sin(q), 0, cos(q), -0.01; 0, 0, 0, 1];
% % t67 = [1, 0, 0, 0.3683; 0, cos(r), -sin(r), 0; 0, sin(r), cos(r), 0; 0, 0, 0, 1];
% 
% t01 = [cos(l), -sin(l), 0, 0; sin(l), cos(l), 0, 0; 0, 0, 1, 270.35; 0, 0, 0, 1];
% t12 = [cos(m), 0, sin(m), 69; 0, 1, 0, 0; -sin(m), 0, cos(m), 0; 0, 0, 0, 1];
% t23 = [1, 0, 0, 364.35; 0, cos(n), -sin(n), 0; 0, sin(n), cos(n), 0; 0, 0, 0, 1];
% t34 = [cos(o), 0, sin(o), 0; 0, 1, 0, 0; -sin(o), 0, cos(o), -69; 0, 0, 0, 1];
% t45 = [1, 0, 0, 374.29; 0, cos(p), -sin(p), 0; 0, sin(p), cos(p), 0; 0, 0, 0, 1];
% t56 = [cos(q), 0, sin(q), 0; 0, 1, 0, 0; -sin(q), 0, cos(q), -10; 0, 0, 0, 1];
% t67 = [1, 0, 0, 368.3; 0, cos(r), -sin(r), 0; 0, sin(r), cos(r), 0; 0, 0, 0, 1];
% 
% t = t01*t12*t23*t34*t45*t56*t67;
end