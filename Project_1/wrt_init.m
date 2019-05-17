function wrt_init(st, p, t)
    s = 0;
    y = [(0:st:50), (50:-st:25), (25)*ones(1,length(200:-st:150)), (55:st:105), (105)*ones(1, length(150:st:175)), (105:-st:55), (55)*ones(1, length(175:st:200)), (55:st:105)];
    z = [50*ones(1,length(0:st:50)), 50*ones(1,length(50:-st:25)), (50:-st:0), ones(1, length(55:st:105)), (0:st:25), 25*ones(1, length(105:-st:55)), (25:st:50), 50*ones(1, length(55:st:105))];
    x = 882*ones(1, length(y));
    T = horzcat(x', -y', z');
    for i = 1:length(T(:,1))
        if i == 1
            plt_links = inv_kin(T(i,1), T(i,2), T(i,3), p, 1, t, 'b');
            pause(0.0001)
        else
            delete(plt_links);
            plt_links = inv_kin(T(i,1), T(i,2), T(i,3), p, 1, t, 'b');
            pause(0.0001);
        end
    end
end