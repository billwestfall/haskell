(*
> use "page023b.sml";
val not = fn: bool -> bool
val it = (): unit
> not true;
val it = false: bool
> not false;
*)

fun not true    = false
|   not false   = true
