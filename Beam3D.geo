//paramÃ©tres 
lc = 5;
L = 10; // longueur de la poutre
l = 2; //  largeur de la poutre
R = 5; // ration longueur largeur

//gÃ©omÃ©trie
//points
Point(1) = {0, -l/2, 0, lc};
Point(2) = {L, -l/2, 0, lc};
Point(3) = {L, l/2, 0, lc};
Point(4) ={0, l/2, 0, lc};
//lignes
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
//surface
Line Loop(1) = {1, 2, 3, 4}; // crÃ©er une frontiÃ¨re fermÃ©e
Plane Surface(1) = {1};
//volume
Extrude {0,0,-0.5}{Surface{1};Layers{3}; Recombine;}

//== maillage ==
Transfinite Line{1,3}=8*R+1; // 8*R élém dans la longueur = 41 nœuds entre lignes 1 et 3
Transfinite Line{4,2}=8+1; // 8 élém dans la largeur =  9 nœuds entre lignes 4 et 2
Transfinite Surface "*"; // on veut un maillage propre
Recombine Surface "*"; // on veut un maillage quad

