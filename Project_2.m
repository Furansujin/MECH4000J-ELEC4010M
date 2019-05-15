clear all, clc;
v = [600, 0; 800, 200; 700, 300; 500, 310;];
ang = 30;
polygon(v);
hold on

[x0, y0, x1, y1] = det_fr_cls(v, 2, 4, 9, 5, ang);

inv_kin(x1, y1, 0, [],  1, [0,0,0],  'b');

inv_kin(x0, y0-350, 0, [],  1, [0,350,0], 'b');