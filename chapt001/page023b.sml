(*
> use "page023b.sml";
Error- in 'page023b.sml', line 17.
Rebinding or specifying "true" is illegal Found near fun true or b = true
Error- in 'page023b.sml', line 17.
Type of function does not match type of recursive application.
   Function: fun true or b = true : 'a -> 'b -> 'c
   Variable: true : 'a
   Reason:
      Can't unify 'a -> 'b -> 'c to 'a
      (Type variable to be unified occurs in type)
Found near fun true or b = true
Error- in 'page023b.sml', line 18.
Rebinding or specifying "true" is illegal Found near fun true & b = b
Exception- Fail "Static Errors" raised
*)

fun not true    = false
fun true or b   = true
fun true & b    = b
