import olympiad;
import cse5;
size(6cm);
defaultpen(fontsize(9pt));

pair A = (6, 0);
pair B = (0, 8);
pair C = (3, 4);
pair O = (0, 0);

filldraw(A -- B -- O -- cycle, grey + opacity(0.2));
draw((-2, 0) -- (8, 0), Arrow);
draw((0, -2) -- (0, 10), Arrow);
draw(L(A, B, 0.2, 0.2));
draw(O -- A, red);
draw(O -- B, blue);
label("$C$", C, dir(55));
label("$B$", B, W);
label("$A$", A, dir(-100));
label("$O$", O, SW);
label("$a$", (3, 0), S, red);
label("$b$", (0, 4), W, blue);
dot(C);
dot(B);
dot(A);
dot(O);
