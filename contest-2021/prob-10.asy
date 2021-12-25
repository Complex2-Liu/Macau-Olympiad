import olympiad;
import cse5;
size(8cm);
defaultpen(fontsize(8pt));

pair A=dir(0);
pair B=dir(180);
pair C=dir(111);
pair P=IP(L(A, A+dir(90), 8), L(C, C+dir(20), 8));
pair Q=IP(L(A, B, 8), L(C, P, 8));

filldraw(A--B--C--cycle, deepgreen+opacity(0.2));
filldraw(A--C--P--cycle, red+opacity(0.2));
filldraw(B--C--Q--cycle, blue+opacity(0.2));
markscalefactor=0.015;
draw(rightanglemark(B,C,A));
draw(unitcircle);

label("$A$",A, E*1.5);
label("$B$",B, dir(-135)*1.5);
label("$C$",C, dir(110)*1.5);
label("$P$",P, dir(45)*1.5);
label("$Q$",Q, S*1.5);
label("$c$", origin, S*1.5);
label("$b=\sqrt{2}a$", (0.5*C+0.5*A)*0.95, 2.5*dir(65));
label("$a$", 0.5*C+0.5*B, dir(135)*1.25);
label("$c$", 0.5*B+0.5*Q, S*1.5);
label("$\sqrt{2}c$", 0.5*Q+0.5*C, dir(110)*1.5);
label("$\frac{ac}{b}$", 0.5*P+0.5*C, dir(100)*1.5);

dot(A);
dot(B);
dot(C);
dot(P);
dot(Q);
