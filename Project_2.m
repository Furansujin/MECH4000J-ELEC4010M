clear all, clc;
v = [600, 0; 800, 200; 700, 300; 500, 310;];
ang = 30;
polygon(v);
hold on
det_fr_cls(v, 2, 4, 2, 9, ang);