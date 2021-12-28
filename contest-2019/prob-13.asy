import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair A = dir(200);
pair B = dir(-20);
pair C = dir(70);
pair I = incenter(A, B, C);
pair T = IP(unitcircle, L(A, I, 5, 5));
pair O = 2 * T - I;
pair D = foot(O, C, B);
pair E = foot(O, A, B);
pair F = foot(O, A, C);

markscalefactor = 0.015;
draw(anglemark(D, C, O), blue);
draw(anglemark(O, B, D), red);
draw(A--B--C--cycle);
draw(F--C);
draw(E--B);
draw(O--D);
draw(C--O--B);
draw(CP(O, D), green);

dot(A);
dot(B);
dot(C);
dot(O);
dot(D);
dot(E);
dot(F);

label("$A$", A, align=down);
label("$B$", B, align=down);
label("$E$", E, align=down);
label("$C$", C, align=dir(130));
label("$F$", F, align=dir(130));
label("$D$", D, align=SW);
label("$O$", O, align=dir(60));
