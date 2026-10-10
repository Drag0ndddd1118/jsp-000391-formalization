import Erdos482

namespace JSP000391

open Erdos482

/--
Formal statement of JSP-000391 (Erdős Problem #482):
Can the specified floor recurrence generate the digits of an algebraic number in a prescribed base?

References:
- R. L. Graham and H. O. Pollak, Note on a nonlinear recurrence related to √2, Math. Mag. 43 (1970), 143-145.
- T. Stoll, On families of nonlinear recurrences related to digits, J. Integer Seq. 8 (2005), Article 05.3.2.
- T. Stoll, On a problem of Erdős and Graham concerning digits, Acta Arith. 125 (2006), 89-100.
-/
def jsp000391Statement : Prop :=
  grahamPollak 1 = 1 ∧
    (∀ n, 1 ≤ n →
      grahamPollak (n + 1) =
        ⌊Real.sqrt 2 * ((grahamPollak n : ℝ) + 1 / 2)⌋₊) ∧
    (∀ n, 1 ≤ n →
      grahamPollak (2 * n + 1) - 2 * grahamPollak (2 * n - 1) =
        (binaryDigit (Real.sqrt 2) n).val) ∧
    Real.ofDigits (fun k ↦ binaryDigit (Real.sqrt 2) (k + 2)) =
      Real.sqrt 2 - 1 ∧
    (∀ t : ℝ, 1 ≤ t → t < 2 →
      (∀ n, 1 ≤ n →
        stollBinary t (2 * n) - 2 * stollBinary t (2 * n - 2) =
          (binaryDigit t n).val) ∧
      Real.ofDigits (fun k ↦ binaryDigit t (k + 2)) = t - 1)

end JSP000391
