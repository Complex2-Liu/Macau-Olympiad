import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair A = (0,4);
pair B = (2,2);
pair C = (0,-4);
pair center = 0.5*A + 0.5*B;

real a = 5 - sqrt(10);
real b = sqrt(33 - 10*sqrt(10));
path ell_1 = ellipse((0,0), 3, 5);
path ell_2 = shift(1,3) * rotate(degrees(A - B)) * ellipse((0,0), a, b);

pair M = IP(ell_1, ell_2);

real t = intersect(ell_1, ell_2)[0];

draw((-4,0) -- (4,0), mediumgrey, arrow=Arrow);
draw((0,-6) -- (0,6), mediumgrey, arrow=Arrow);
draw(L(M, M + dir(ell_1, t), 3, 2), dashed);
draw(ell_1);
draw(ell_2, magenta);
draw(A -- M -- C, blue);
dot(A);
dot(B);
dot(C);
dot(M);

label("$A$", A, align=dir(-60)*1.5);
label("$C$", C, align=left);
label("$B$", B, align=dir(120));
label("$P$", M, align=dir(60));
label("$E$", (-2.5,0), align=up);
label("$E_1$", (0, 2.3), align=dir(60), magenta);
label("$\ell_p$", M + 2*dir(ell_1, t), align=dir(45));
