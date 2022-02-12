import Mathlib

constant X : Type _

mutual

inductive A
  | mk (b : B)

inductive B
  | mk (a : X → A) (b : X → B)

end

example (a : A) (as : List A) (h : a ∈ as) : True := sorry