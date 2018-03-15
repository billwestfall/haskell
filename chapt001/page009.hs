{--
Prelude> 1 ++ 1

<interactive>:2:1:
    Non type-variable argument in the constraint: Num [a]
    (Use FlexibleContexts to permit this)
    When checking that ‘it’ has the inferred type
      it :: forall a. Num [a] => [a]
Prelude> 1 == 1
True
Prelude> 2 < 3
True
Prelude> 4 >= 3.99
True
Prelude> 2 /- 3

<interactive>:6:3:
    Not in scope: ‘/-’
    Perhaps you meant one of these:
      ‘-’ (imported from Prelude), ‘/’ (imported from Prelude),
      ‘/=’ (imported from Prelude)
Prelude> 2 /= 3
True
Prelude> 4 > 5
False
Prelude> 1 + (4 * 4)
17
Prelude> 1 + 4 * 4
17
Prelude> pi
3.141592653589793
Prelude> e

<interactive>:12:1: Not in scope: ‘e’
Prelude> let e = exp 1
Prelude> (e ** pi) - pi
19.99909997918947
Prelude> [1,2,3]
[1,2,3]
Prelude> [1..11]
[1,2,3,4,5,6,7,8,9,10,11]
Prelude> [1,4..15]
[1,4,7,10,13]
Prelude> [1,4..13]
[1,4,7,10,13]
Prelude> [1,2,3..13]

<interactive>:19:7: parse error on input ‘..’
Prelude> [1,2..13]
[1,2,3,4,5,6,7,8,9,10,11,12,13]
Prelude> [3,5..13]
[3,5,7,9,11,13]
Prelude> 
--}
