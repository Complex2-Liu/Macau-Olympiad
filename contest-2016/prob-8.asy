import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(9cm);

pair A = down;
pair B = right;
pair C = up;
pair D = left;

draw(A--B--C--D--cycle);
draw(A--C ^^ B--D);

pair P = (0, 0.35);
pair Q = C - B + P;

markscalefactor = 0.02;
filldraw(anglemark(P, D, C), red + opacity(0.3));
filldraw(anglemark(C, B, P), red + opacity(0.3));
filldraw(anglemark(A, P, B), magenta + opacity(0.2));
filldraw(anglemark(D, Q, C), magenta + opacity(0.2));
fill(Q--C--B--P--cycle, yellow + opacity(0.1));
fill(Q--D--A--P--cycle, green + opacity(0.1));
draw(Q--C--B--P--cycle, purple);
draw(Q--D--A--P--cycle, purple);
draw(D--P);
draw(C--P);
draw(circumcircle(C, P, D), red);

dot(A);
dot(B);
dot(C);
dot(D);
dot(P);
dot(Q);

label("$A$", A, align=down);
label("$B$", B, align=right);
label("$C$", C, align=dir(65));
label("$D$", D, align=dir(200));
label("$P$", P, align=dir(30));
label("$Q$", Q, align=dir(100));

transform t = shift((4,0));

pair A = t * A;
pair B = t * B;
pair C = t * C;
pair D = t * D;

draw(A--B--C--D--cycle);
draw(A--C ^^ B--D);
draw(t * unitcircle, red);

pair P = t * dir(120);
pair Q = C - B + P;

markscalefactor = 0.035;
filldraw(anglemark(C, D, P), red + opacity(0.3));
filldraw(anglemark(C, B, P), red + opacity(0.3));
filldraw(anglemark(P, Q, C), red + opacity(0.3));
fill(Q--C--B--P--cycle, yellow + opacity(0.1));
fill(Q--D--A--P--cycle, green + opacity(0.1));
draw(Q--C--B--P--cycle, purple);
draw(Q--D--A--P--cycle, purple);
draw(D--P--C, purple);

dot(A);
dot(B);
dot(C);
dot(D);
dot(P);
dot(Q);

label("$A$", A, align=down);
label("$B$", B, align=right);
label("$C$", C, align=dir(65));
label("$D$", D, align=dir(200));
label("$P$", P, align=dir(80));
label("$Q$", Q, align=dir(180));
