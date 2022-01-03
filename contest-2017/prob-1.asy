import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(6cm);

pair A = (1, 2);
pair B = (4, 5);
pair P = 2*A - B;

path c_a = circle(A, 1);
path c_b = circle(B, 2);

draw((0,0)--(7,0), arrow=Arrow);
draw((0,0)--(0,7), arrow=Arrow);
draw(c_a, blue);
draw(c_b, blue);
draw(L((2,2), (2,5), 1, 1), dashed + mediumgrey);
draw(L((1,3), (4,3), 1, 1), dashed + mediumgrey);

pair X = tangent(P, A, 1);
pair Y = tangent(P, B, 2);
draw(L(X, Y, 1, 1), dashed + mediumgrey);

pair X = tangent(P, A, 1, n = 2);
pair Y = tangent(P, B, 2, n = 2);
draw(L(X, Y, 1, 1), dashed + mediumgrey);

dot(A);
dot(B);
dot((0,0));

label("$A$", A, align=down);
label("$B$", B, align=down);

clip(box((-0.5,-0.5), (7.5,7.5)));
