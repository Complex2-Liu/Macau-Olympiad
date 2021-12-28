import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(7cm);

pair F_1 = (4,0);
pair F_2 = (-4, 0);
path ell = ellipse((0,0), 5, 3);
pair P = point(ell, 0.6);
pair L_1 = reflect(P, P + dir(ell, 0.6)) * F_1;
pair Q = P - 1.5*dir(ell, 0.6);
pair U = dir(degrees(P - F_2) + 90) * 0.2 + F_2;
pair V = dir(degrees(P - F_2) + 90) * 0.2 + L_1;

draw((-6,0) -- (6,0), mediumgrey, arrow=Arrow);
draw((0,-4) -- (0,4), mediumgrey, arrow=Arrow);
draw(ell, red);
draw(F_1 -- P -- F_2, blue);
draw(L(P, P + dir(ell, 0.6), 3, 2), dashed);
draw(P -- L_1 -- Q, deepgreen);
draw(F_1 -- Q -- F_2, magenta);
draw(V -- U, linewidth(0.3), arrow = Arrows(TeXHead), L = Label("$2a$", position=MidPoint));
dot(origin);
dot(F_1);
dot(F_2);
dot(P);
dot(L_1);
dot(Q);
dot((5,0));
dot((-5,0));
dot((0,3));
dot((0,-3));

label("$F_1$", F_1, align=down);
label("$F_2$", F_2, align=down);
label("$P$", P, align=up*2);
label("$Q$", Q, align=dir(15)*1.5);
label("$L$", L_1, align=right);
label("$\omega$", P - 3*dir(ell, 0.6), align=dir(60));
