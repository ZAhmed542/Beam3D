//paramétres 
lc = 5;
L = 10; // longueur de la poutre
l = 2; //  largeur de la poutre

//géométrie
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
Line Loop(1) = {1, 2, 3, 4}; // créer une frontière fermée
Plane Surface(1) = {1};
//volume
Extrude {0,0,-0.5}{Surface{1};Layers{3}; Recombine;}


