unitsize(1cm);

pair A = (0, 0);
pair B = (1, 0);
pair C = dir(60);
path p = A -- B -- C -- cycle;

dot(A);
dot(B);
dot(C);
draw(p);
label("$n=1$", (1/2, 0), align=down);

transform t = shift(1, 0);
transform ut = shift(dir(60));
transform r = rotate(60);
transform tt = t * t;

dot(tt * A);
dot(tt * B);
dot(tt * C);
dot(tt * t * A);
dot(tt * t * B);
dot(tt * t * C);
dot(ut * tt * A);
dot(ut * tt * B);
dot(ut * tt * C);
draw(tt * p);
draw(t * tt * p);
draw(ut * tt * p);
label("$n=2$", (3,0), align=down);

transform tt = shift(5, 0);

dot(tt * A);
dot(t * tt * A);
dot(t * t * tt * A);
dot(t * t * t * tt * A);
dot(ut * tt * A);
dot(ut * t * tt * A);
dot(ut * t * t * tt * A);
dot(ut * ut * tt * A);
dot(ut * ut * t * tt * A);
dot(ut * ut * ut * tt * A);
draw(tt * p );
draw(t * tt * p );
draw(t * t * tt * p );
draw(ut * tt * p );
draw(ut * t * tt * p );
draw(ut * ut * tt * p );
label("$n=3$", (6.5,0), dir(-90));
