import olympiad;
import cse5;
defaultpen(fontsize(8pt));

size(5.5cm);

pair A_1 = (1/4, 0);
pair A_2 = (2/4, 0);
pair A_3 = (3/4, 0);
pair A_4 = (4/4, 0);

draw(circle(A_1, 1));
draw(circle(A_2, 1));
draw(circle(A_3, 1));

dot(A_1, red);
dot(A_2, red);
dot(A_3, red);

label("($\frac{1}{4}$,0)", A_1, align=down);
label("($\frac{2}{4}$,0)", A_2, align=up);
label("($\frac{3}{4}$,0)", A_3, align=down);
