(*
> use "page025a.sml";
val stringcopy = fn: int * string -> string
val it = (): unit
> stringcopy (2, "xyz");
val it = "xyzxyz": string
> stringcopy (0, "xxx");
val it = "": string
*)

fun stringcopy (n, s)   =   if n = 0
                            then ""
                            else stringcopy (n-1, s)^s
