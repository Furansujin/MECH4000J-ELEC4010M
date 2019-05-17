function plt = inv_kin(x, y, z, point_cloud, num_sol, t, h)
    options = optimoptions(@lsqnonlin,'Algorithm','levenberg-marquardt');
    w = 10;
    a = linspace(-141,51,w)*pi/180;
    b = linspace(-123,60,w)*pi/180;
    c = linspace(-173,173,w)*pi/180;
    d = linspace(-3,150,w)*pi/180;
    e = linspace(-175,175,w)*pi/180;
    f = linspace(-90,120,w)*pi/180;
    g = linspace(-175,175,w)*pi/180;

    [T1,T2,T3,T4,T5,T6]=ndgrid(a,b,c,d,e,f);
    
    if isempty(point_cloud)
        l = T1;
        m = T2;
        n = T3;
        o = T4;
        p = T5;
        q = T6;
        xM = 69.*cos(l) - 10.*cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) - (3683.*cos(q).*(sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) - cos(l).*cos(m).*cos(o)))/10 - 69.*sin(l).*sin(n) - (3683.*sin(q).*(cos(p).*(cos(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)) + cos(l).*cos(m).*sin(o)) + sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n))))/10 - (37429.*sin(o).*(sin(l).*sin(n) + cos(l).*cos(n).*sin(m)))/100 - 10.*sin(p).*(cos(n).*sin(l) - cos(l).*sin(m).*sin(n)) + (7287.*cos(l).*cos(m))/20 + (37429.*cos(l).*cos(m).*cos(o))/100 - 69.*cos(l).*cos(n).*sin(m);
        yM = 69.*sin(l) + (7287.*cos(m).*sin(l))/20 + 69.*cos(l).*sin(n) + 10.*cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + (3683.*cos(q).*(sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) + cos(m).*cos(o).*sin(l)))/10 + (3683.*sin(q).*(cos(p).*(cos(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)) - cos(m).*sin(l).*sin(o)) + sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n))))/10 + (37429.*sin(o).*(cos(l).*sin(n) - cos(n).*sin(l).*sin(m)))/100 + 10.*sin(p).*(cos(l).*cos(n) + sin(l).*sin(m).*sin(n)) + (37429.*cos(m).*cos(o).*sin(l))/100 - 69.*cos(n).*sin(l).*sin(m); 
        zM = (3683.*sin(q).*(cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) + cos(m).*sin(n).*sin(p)))/10 - 69.*cos(m).*cos(n) - (37429.*cos(o).*sin(m))/100 - (7287.*sin(m))/20 + 10.*cos(p).*(sin(m).*sin(o) - cos(m).*cos(n).*cos(o)) - (3683.*cos(q).*(cos(o).*sin(m) + cos(m).*cos(n).*sin(o)))/10 - (37429.*cos(m).*cos(n).*sin(o))/100 + 10.*cos(m).*sin(n).*sin(p) + 5407/20; 
        point_cloud = [xM(:),yM(:),zM(:)];
    end 
    
    point_cloud = [point_cloud(:, 1),point_cloud(:, 2),point_cloud(:, 3)];
    point_cloud = (point_cloud-[x, y, z]).^2;
    I = find(sum(point_cloud,2) < 10000);

    fun  = @equ;
    set = repmat([x, y, z], length(I), 1);
    j = horzcat(T1(I),T2(I),T3(I),T4(I),T5(I),T6(I), set);
    i = 1;
    cnt = 0;
    while 1
        if cnt == num_sol
            break
        end
        ang = lsqnonlin(fun,j(i,:), [],[], options);
        if (ang(1) > -141*(pi/180) && ang(1) < 51*(pi/180))...
                && (ang(2) > -123*(pi/180) && ang(2) < 60*(pi/180))...
                && (ang(3) > -173*(pi/180) && ang(3) < 173*(pi/180))...
                && (ang(4) > -3*(pi/180) && ang(4) < 150*(pi/180))...
                && (ang(5) > -175*(pi/180) && ang(5) < 175*(pi/180))...
                && (ang(6) > -90*(pi/180) && ang(6) < 120*(pi/180))
            [plt, chk] = fwd_kin(ang(1)*(180/pi),ang(2)*(180/pi),ang(3)*(180/pi),ang(4)*(180/pi),ang(5)*(180/pi),ang(6)*(180/pi),0, t, h);
            hold on;
            if(chk == 1)
                cnt  = cnt + 1;
            end
        end
        i = i+1;
    end
end