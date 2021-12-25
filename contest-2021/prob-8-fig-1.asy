import olympiad;
import cse5;
size(6cm);
defaultpen(fontsize(9pt));

pair A=dir(60);
pair B=dir(-150);
pair C=dir(-30);
pair H=orthocenter(A, B, C);
pair D=IP(L(A, H, 2), B -- C);
pair E=IP(A -- C, L(B, H, 2));
pair F=IP(A -- B, L(C, H, 2));
pair G=IP(L(D, F, 9), L(A, C, 9));

dot(A);
dot(B);
dot(C);
dot(H);
dot(D);
dot(E);
dot(F);
dot(G);

draw(A--B--C--cycle);
draw(A--D);
draw(B--E);
draw(C--F);
draw(D--E);
draw(D--F);
draw(D--G, dashed);
draw(C--G, dashed);
draw(MA(E, D, A, 0.15, blue));
draw(MA(A, D, F, 0.18, blue));

label("$A$", A, N*1.5);
label("$B$", B, S*1.5);
label("$C$", C, dir(20)*1.5);
label("$D$", D, dir(-110)*1.5);
label("$E$", E, dir(45)*1.5);
label("$F$", F, dir(110)*1.5);
label("$G$", G, E*1.5);
label("$H$", H, dir(65)*1.5);
