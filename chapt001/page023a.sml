(*
> use "page023a.sml";
val avepair = fn: int * int -> int
val matha = fn: int * int -> int
val remove = fn: int * int -> int
val sizer = fn: string * string -> string
val it = (): unit
> avepair (2, 1);
val it = 1: int
> remove (2, 1);
val it = ~1: int
> matha (3, 2);
val it = 2: int
*)

fun avepair (m, n)                  =   (m + n) div 2
fun remove (m, n)                   =   if m = 0 then n else n - m
fun matha (m, n)                    =   if m = n then m else if m < n then avepair (m, n) else (m + n) div 2
