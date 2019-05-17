function F = equ(j)
l = j(1);
m = j(2);
n = j(3);
o = j(4);
p = j(5);
q = j(6);
x = j(7);
y = j(8);
z = j(9);

F(1) = -x + (69.*cos(l) - 10.*cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) - (3683.*cos(q).*(sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) - cos(l).*cos(m).*cos(o)))/10 - 69.*sin(l).*sin(n) - (3683.*sin(q).*(cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) + sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n))))/10 - (37429.*sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)))/100 - 10.*sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n)) + (7287.*cos(l).*cos(m))/20 + (37429.*cos(l).*cos(m).*cos(o))/100 - 69.*cos(l).*cos(n).*sin(m));
F(2) = -y + (69.*sin(l) + (7287.*cos(m).*sin(l))/20 + 69.*cos(l).*sin(n) + 10.*cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + (3683.*cos(q).*(sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) + cos(m).*cos(o).*sin(l)))/10 + (3683.*sin(q).*(cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n))))/10 + (37429.*sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)))/100 + 10.*sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n)) + (37429.*cos(m).*cos(o).*sin(l))/100 - 69.*cos(n).*sin(l).*sin(m)); 
F(3) = -z + ((3683.*sin(q).*(cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) + cos(m).*sin(n).*sin(p)))/10 - 69.*cos(m).*cos(n) - (37429.*cos(o).*sin(m))/100 - (7287.*sin(m))/20 + 10.*cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) - (3683.*cos(q).*(cos(o).*sin(m) + cos(m).*cos(n).*sin(o)))/10 - (37429.*cos(m).*cos(n).*sin(o))/100 + 10.*cos(m).*sin(n).*sin(p) + 5407/20); 
end