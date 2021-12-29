import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair A_1 = (-1, 0);
pair B_1 = (1, 0);
pair N_1 = origin;
pair A_2 = (-1, 1);
pair B_2 = (1, 1);
pair N_2 = (0, 1);
pair O = (0, 1.5);
pair M_1 = IPs(L(N_2, O, 9, 9), circle(O, 0.8))[0];
pair M_2 = IPs(L(N_2, O, 9, 9), circle(O, 0.8))[1];

draw(circle(N_1, 0.5), red);
draw(circle(O, 0.8), red);
draw(circle(N_2, 0.3), blue);
draw(M_1--M_2, dashed);
draw((-1, 0.6)--(1, 0.6), mediumgrey);
draw(A_1--B_1);
draw(A_2--B_2);

dot(N_1);
dot(A_1);
dot(B_1);
dot(N_2);
dot(A_2);
dot(B_2);
dot(O);
dot(M_1);
dot(M_2);

label("$A$", A_1, align=down);
label("$A$", A_2, align=down);
label("$B$", B_1, align=down);
label("$B$", B_2, align=down);
label("$O$", N_1, align=down);
label("$O$", O, align=dir(45));
label("$M_1$", M_1, align=dir(55) * 2);
label("$M_2$", M_2, align=dir(45));
