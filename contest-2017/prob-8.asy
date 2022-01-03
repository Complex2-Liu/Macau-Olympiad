import olympiad;
import cse5;
defaultpen(fontsize(8pt));
pen p = defaultpen;

size(7cm);

pair A=dir(68);
pair C=dir(-35);
pair B=dir(-145);
pair E=(4/7)*A+(3/7)*B;
pair D=(2/3)*C+(1/3)*A;
path c = circumcircle(A, D, E);
pair M = IPs(c, unitcircle)[1];
pair F = IP(
B -- C,
L(M, bisectorpoint(B, M, C), 5, 5)
);
pair G = IP(
E -- D,
L(M, bisectorpoint(E, M, D), 5, 5)
);
pair N = dir(-90);

filldraw(B -- E -- M -- cycle, deepgreen + opacity(0.1));
filldraw(F -- G -- M -- cycle, deepgreen + opacity(0.1));
filldraw(C -- D -- M -- cycle, deepgreen + opacity(0.1));
draw(unitcircle);
draw(c, red + dotted);
draw(A--B--C--cycle, purple + 2*linewidth(p));
draw(E--D);
draw(A--N--F, dashed);
markscalefactor = 0.015;
draw(anglemark(F, N, A), magenta);
draw(M--G, red + 2*linewidth(p));
draw(M--F, red + 2*linewidth(p));

dot(A);
dot(B);
dot(C);
dot(E);
dot(D);
dot(M);
dot(F);
dot(G);
dot(N);

label("$A$", A, align=dir(60));
label("$B$", B, align=dir(-135));
label("$C$", C, align=dir(-45));
label("$N$", N, align=down);
label("$M$", M, align=dir(10));
label("$E$", E, align=dir(180));
label("$D$", D, align=2*dir(-110));
label("$F$", F, align=dir(-80));
label("$G$", G, align=dir(-140));
