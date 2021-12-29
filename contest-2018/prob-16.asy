import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair O = origin;
pair A = dir(-151.4);
pair B = dir(-28.6);
pair M = 0.5 * (A + B);
pair D = 0.65 * B + 0.35 * A;
real angle_A = 0.5 * (180 - degrees(D/A));
real angle_B = 0.5 * (180 - degrees(B/D));
pair C = IP(L(A, A + (1,0) * dir(angle_A), 5, 5), L(B, B + (-1,0) * dir(-angle_B), 5, 5));
pair F = foot(B, A, C);
pair E = foot(A, B, C);
pair O_1 = M + (-M + D - M);
pair H = IP(A--E, B--F);
pair N = 0.5 * (H + C);

markscalefactor=0.01;
filldraw(anglemark(O, C, H), magenta + opacity(0.2), magenta);
draw(A--B--C--cycle);
filldraw(CP(O_1, D), heavycyan + opacity(0.1), heavycyan);
draw(A--E ^^ B--F);
draw(E--D--F--cycle);
draw(O_1--N, dashed);
draw(E--N--F--O_1--cycle, deepgreen + linewidth(1.2));
draw(M--O--O_1--D, dashed + blue);
draw(A--O--B, red);
draw(O--D, red + linewidth(1.2));
draw(O--C--H);

dot(O);
dot(A);
dot(B);
dot(M);
dot(D);
dot(C);
dot(F);
dot(E);
dot(O_1);
dot(H);
dot(N);

label("$A$", A, align=down);
label("$B$", B, align=down);
label("$C$", C, align=right);
label("$O$", O, align=dir(110));
label("$M$", M, align=down);
label("$D$", D, align=down);
label("$H$", H, align=down*1.5);
label("$O'$", O_1, align=SE);
label("$E$", E, align=dir(20));
label("$F$", F, align=dir(110));
label("$N$", N, align=dir(60)*2);
label("$A$", A, align=down);
label("$\Gamma$", (-0.27, 0), heavycyan);
