function polygon(v)
    v = [v zeros(length(v(:,1)),1)];
    v = [v; v(1,:)];
    plot3(v(:,1),v(:,2),v(:,3), 'LineWidth',3);
    axis equal
    axis([min(v(:,1)) max(v(:,1)) min(v(:,2)) max(v(:,2))])
%     axis([-500 500 -500 500])
end