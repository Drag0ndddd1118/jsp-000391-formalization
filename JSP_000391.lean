import Erdos482

open Erdos482

/--
JSP-000391: Can the specified floor recurrence generate the digits of an algebraic number in a prescribed base?
Erdős Problem #482 (Graham–Pollak 1970, Stoll 2005/2006).

This standalone Lean 4 verification certifies that the Graham–Pollak recurrence
`a(1) = 1`, `a(n+1) = ⌊√2 * (a(n) + 1/2)⌋` exactly generates the canonical binary
digits of `√2`, and establishes Stoll's arbitrary-normalized-real binary generalization
for every `t ∈ [1, 2)`.
-/
theorem jsp_000391 :
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
        Real.ofDigits (fun k ↦ binaryDigit t (k + 2)) = t - 1) :=
  erdos_482

#print axioms jsp_000391
