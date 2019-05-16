function [l,m,l1,m1,fc] = det_fr_cls(v, ln1, ln2, ind1, ind2, u)
    x1 = [v(ln1,1), v(ln1+1,1)];
    y1 = [v(ln1,2), v(ln1+1,2)];
    [n, l, m] = plt_cone(u, x1, y1, ind1, v, 'r');
    hold on
    if ln2 == length(v)
        x2 = [v(ln2,1), v(1,1)];
        y2 = [v(ln2,2), v(1,2)];
    else
        x2 = [v(ln2,1), v(ln2+1,1)];
        y2 = [v(ln2,2), v(ln2+1,2)];
    end
    [n1, l1, m1] = plt_cone(u, x2, y2, ind2, v, 'g');

    plot([l, l1], [m, m1], 'k');

    coef = polyfit([l, l1], [m, m1], 1);

    o = -1/n(1);
    o1 = -1/n1(1);
    t = atan((coef(1)-(o))/(1+(o*coef(1))));
    t1 = atan((coef(1)-(o1))/(1+(o1*coef(1))));

    if abs(rad2deg(t)) < u && abs(rad2deg(t1)) < u
        fprintf("force closure")
        fc = 1;
%         inv_kin(l, m, 0, [],  1, 'b');
    else
        fprintf("not force closure")
        fc = 0;
    end
end