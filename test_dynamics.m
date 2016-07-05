J = [-1;0;0;0];
GT = [1 0 0; 0 1 -1;1 0 0; 0 1 1];


A = [J -GT]

P = eye(4) - pinv(A)*A

If_base = GT.'*pinv(J.')

J = sym('J');
Mh = sym('Mh');
Mo = sym('Mo');
G = sym('G');

Mdyn= [Mh 0 J.'; 0 Mo -G; J -G.' 0]