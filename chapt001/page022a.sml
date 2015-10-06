(*
> use "page022a.sml";
val maxpair = fn: int * int -> int
val maxpairb = fn: int * int -> int
val minmaxpair = fn: int * int -> int * int
val minpair = fn: int * int -> int
val snd = fn: 'a * 'b -> 'b
val it = (): unit
> snd (3, 2);
val it = 2: int
> minpair (4, 3);
val it = 3: int
> maxpair (5, 4);
val it = 5: int
> minmaxpair (6, 5);
val it = (5, 6): int * int
> maxpairb (5, 6);
val it = 6: int
*)

fun snd (x, y)                      =   y
fun minpair (x, y)                  =   if x < y then x else y
fun maxpair (x, y)                  =   if x > y then x else y
fun minmaxpair (x, y)               =   if x < y then (x, y) else (y, x)
fun maxpairb anypair                =   snd (minmaxpair anypair)
