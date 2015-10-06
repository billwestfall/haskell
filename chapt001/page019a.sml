(*
> use "page019a.sml";
val double = fn: int -> int
val sixtimes = fn: int -> int
val treble = fn: int -> int
val it = (): unit
> double 3;
val it = 6: int
> treble 4;
val it = 12: int
> sixtimes 3;
val it = 18: int
*)

fun double x = x + x
fun treble x = x*3
fun sixtimes x = double(treble x)
