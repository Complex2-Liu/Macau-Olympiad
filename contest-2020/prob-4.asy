import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair A = dir(70);
pair B = dir(195);
pair C = dir(-90);
pair D = dir(-15);
pair I_1 = incenter(A,B,C);
pair I_2 = incenter(A,D,C);
pair P = foot(I_1, A, B);
pair R = foot(I_2, A, D);
pair F = IPs(unitcircle, L(C, I_1, 5, 5))[0];
pair E = IPs(unitcircle, L(C, I_2, 5, 5))[0];
pair Q = reflect(F, I_1) * P;
pair S = reflect(E, I_2) * R;
pair U = IP(A--B, F--I_1);
pair V = IP(A--D, E--I_2);
pair I = IP(B--E, D--F);

draw(unitcircle);
draw(A--B--C--D--cycle);
draw(A--C ^^ B--D);
draw(C--F--E--cycle);
draw(CP(I_1, P));
draw(CP(I_2, R));
draw(U--V, red + dashed);
draw(B--E ^^ D--F, blue);

pen p = linewidth(2.5);
dot(A, p);
dot(B, p);
dot(C, p);
dot(D, p);
dot(I_1, p);
dot(I_2, p);
dot(P, p);
dot(R, p);
dot(F, p);
dot(E, p);
dot(Q, p);
dot(S, p);
dot(U, p);
dot(V, p);
dot(I, p);

label("$A$", A, align=N);
label("$B$", B, align=SW);
label("$C$", C, align=down);
label("$D$", D, align=SE);
label("$I_1$", I_1, align=dir(60));
label("$I_2$", I_2, align=dir(150));
label("$P$", P, align=dir(190));
label("$R$", R, align=dir(30));
label("$E$", E, align=dir(60));
label("$F$", F, align=dir(110));
label("$U$", U, align=dir(170));
label("$Q$", Q, align=up);
label("$S$", S, align=up);
label("$V$", V, align=right);
label("$I$", I, align=dir(110)*1.5);
