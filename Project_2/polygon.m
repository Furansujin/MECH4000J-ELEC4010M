function polygon(v)
    v = [v zeros(length(v(:,1)),1)];
    v = [v; v(1,:)];
    plot3(v(:,1),v(:,2),v(:,3), 'LineWidth',3);
    axis equal
    x_cen = mean([min(v(:,1)) max(v(:,1))]);
    y_cen = mean([min(v(:,2)) max(v(:,2))]);
    axis([(min(v(:,1)) - x_cen) (max(v(:,1))+ x_cen) (min(v(:,2))- y_cen) (max(v(:,2)+ y_cen))])
%     axis([-1000 1000 -1000 1000])
end