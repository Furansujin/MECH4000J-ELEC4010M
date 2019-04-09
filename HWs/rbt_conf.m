function rbt_conf(L1, L2, tht1, tht2)
%% Colab with Hongseo Yoon
% Example usage rbt_conf(10, 7, 60, 135)
%% Robot Config
    tht1 = deg2rad(tht1);
    tht2 = deg2rad(tht2);
%     syms L1 L2 tht1 tht2 real
    orig = [0,0,0,1]';
    T01 = [cos(tht1), -sin(tht1), 0, L1*cos(tht1); sin(tht1), cos(tht1), 0, L1*sin(tht1); 0, 0, 1, 0; 0, 0, 0, 1];
    T12 = [cos(tht2), -sin(tht2), 0, L2*cos(tht2); sin(tht2), cos(tht2), 0, L2*sin(tht2); 0, 0, 1, 0; 0, 0, 0, 1];
    v0 = T01*orig;
    v1 = T01*T12*orig;
    v=[v1';v0';orig'];
    plot(v(:,1),v(:,2),'b','LineWidth',3);
    hold on;
    plot(v(:,1),v(:,2),'O','markerfacecolor', 'b', 'MarkerSize', 8);
    
%% Manipulability ellipse
%     jacobian([v1(1,1), v1(2,1)], [tht1, tht2])
    J = [- L1*sin(tht1) - L2*cos(tht1)*sin(tht2) - L2*cos(tht2)*sin(tht1), - L2*cos(tht1)*sin(tht2) - L2*cos(tht2)*sin(tht1);...
        L1*cos(tht1) + L2*cos(tht1)*cos(tht2) - L2*sin(tht1)*sin(tht2),   L2*cos(tht1)*cos(tht2) - L2*sin(tht1)*sin(tht2)];
    A = J*J';
    [V,U] = eig(A);
    
    a=sqrt(U(1,1)); % horizontal radius
    b=sqrt(U(2,2)); % vertical radius
    x0=v1(1,1); % x0,y0 ellipse centre coordinates
    y0=v1(2,1);
    t=-pi:0.01:pi;
    x=a*cos(t);
    y=b*sin(t);
    theta = atan(V(2,1)/V(1,1));
    T = [cos(theta), -sin(theta), 0, x0; sin(theta), cos(theta), 0, y0; 0, 0, 1, 0; 0, 0, 0, 1];
    for i = 1:length(x)
        out = T*[x(i), y(i), 0, 1]';
        x_new(i) = out(1,1);
        y_new(i) = out(2,1);
    end
    plot(x_new,y_new,'r');
    axis equal

end