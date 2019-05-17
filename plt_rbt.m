function plt_rbt(v, x0, y0, x1, y1, fc)
    x_cen = mean([min(v(:,1)) max(v(:,1))]);
    y_cen = mean([min(v(:,2)) max(v(:,2))]);

    if fc == 1
        inv_kin(x0 - (x_cen - max(v(:,1))/1.5), y0 - y_cen + 175, 0, [],  1, [(x_cen - max(v(:,1))/1.5), -(-y_cen + 175),0],  'b');
        inv_kin(x1 - (x_cen - max(v(:,1))/1.5), y1 - y_cen - 175, 0, [],  1, [(x_cen - max(v(:,1))/1.5),-(-y_cen - 175),0], 'b');
    end
end