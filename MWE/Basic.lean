import Lean
open Lean Meta Elab Tactic

@[extern "lean_printhello"]
opaque printhello : Unit → Unit

@[extern "lean_nohello"]
opaque nohello : Unit → Unit

def Unit.toExpr (_ : Unit) : MetaM Expr :=
  Lean.Meta.mkAppM ``Unit.unit #[]

elab "hello" : tactic => do
  let u := printhello ()
  (← getMainGoal).assign (← u.toExpr)

example : Unit := by
  hello

elab "nohello" : tactic => do
  let u := nohello ()
  (← getMainGoal).assign (← u.toExpr)

example : Unit := by
  nohello
