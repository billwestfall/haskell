(*
> use "page024a.sml";
val safediv = fn: int * int -> int
val it = (): unit
> safediv (3, 2);
val it = 1: int
> safediv (3, 0);
val it = 1000: int
>
*)

fun safediv (m, 0) = 1000
|   safediv (m, n) = m div n
