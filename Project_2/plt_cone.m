function [coef, l, m] = plt_cone(u, x1, y1, p, v, col)

t = deg2rad(u);
d = linspace(min(v(:,1)), max(v(:,1)), 2);

coef = polyfit(x1, y1, 1);
x = linspace(x1(1),x1(2),10);
y = coef(1)*x + coef(2);
c = y+(x/coef(1));

y_n = (-x/coef(1)) + c(p);

o = [x;y_n;zeros(1,length(x));ones(1,length(x))];
t_1 = [cos(t), -sin(t), 0, 0; sin(t), cos(t), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1];
t_2 = [1, 0, 0, -x(p); 0, 1, 0, -y(p); 0, 0, 1, 0; 0, 0, 0, 1];
r_o = inv(t_2)*(t_1*(t_2*o));
t = -t;
t_1 = [cos(t), -sin(t), 0, 0; sin(t), cos(t), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1];
r_o1 = inv(t_2)*(t_1*(t_2*o));

coef_0 = polyfit(r_o(1,1:2), r_o(2,1:2), 1);
coef_1 = polyfit(r_o1(1,1:2), r_o1(2,1:2), 1);
cn_1 = coef_0(1)*d + coef_0(2);
cn_2 = coef_1(1)*d + coef_1(2);
l = x(p);
m = y(p);

% plot(x,y)
% hold on
% plot(x,y_n)
% plot(r_o(1,:), r_o(2,:))
% plot(r_o1(1,:), r_o1(2,:))
plot(d, cn_1, col)
plot(d, cn_2, col)
end