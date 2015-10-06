(*
> use "page020a.sml";
val avepair = fn: int * int -> int
val even = fn: int -> bool
val evenprod = fn: int * int -> bool
val fst = fn: 'a * 'b -> 'a
val snd = fn: 'a * 'b -> 'b
val sumbetween = fn: int * int -> int
val sumdiff = fn: int * int -> int * int
val it = (): unit
> even 4;
val it = true: bool
> evenprod (3, 1);
val it = false: bool
> sumbetween (3, 1);
val it = 6: int
> avepair (2, 3);
val it = 2: int
> fst (3, 1);
val it = 3: int
> snd (3, 1);
val it = 1: int
> sumdiff (3, 1);
val it = (4, 2): int * int
*)

fun even (x)                  =   (x mod 2 = 0)
fun evenprod (x, y)           =   even (x * y)
fun sumbetween (m, n)         =   ((m+n)*(abs(m-n)+1)) div 2
fun avepair (x, y)            =   (x + y) div 2
fun fst (x, y)                =   x
fun snd (x, y)                =   y
fun sumdiff (x, y)            =   (x + y, abs(x - y))
