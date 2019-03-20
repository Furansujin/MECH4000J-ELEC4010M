clear all
%%
p_1 = [(1/sqrt(3)), (-1/sqrt(6)), (1/sqrt(2))]'
R = rotz(-120)*roty(135)*rotx(30)
p_2 = R*p_1

%%
[0, 1, 0; 0, 0, 1; 1, 0, 0]*[sqrt(2), 0, 2]'

[1/sqrt(2), 0, 0; 0, 1/sqrt(2), 0; 0, 0, sqrt(2)]*[1, 1, -1]'

%%
syms a b c d e f g h i 
p_1 = [sqrt(2), 0, 2]'
q_1 = [0, 2, sqrt(2)]'
p_2 = [1, 1, -1]'
q_2 = [1/sqrt(2), 1/sqrt(2), -sqrt(2)]'
p_3 = [0, 2*sqrt(2), 0]'
q_3 = [-sqrt(2), sqrt(2), -2]'
R = [a, b, c; d, e, f; g, h, i]
eqn_1 = R*p_1 == q_1
eqn_2 = R*p_2 == q_2
eqn_3 = R*p_3 == q_3

[A,B] = equationsToMatrix([eqn_1, eqn_2, eqn_3], [a, b, c, d, e, f, g, h, i])
X = linsolve(A,B)