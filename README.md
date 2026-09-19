# JSP-000391 Formalization

Standalone Lean 4 verification repository for **JSP-000391** (Erdős Problem #482).

## Problem Description
Can the specified floor recurrence generate the digits of an algebraic number in a prescribed base?

## Solution & Verification
- **Mathematical Resolution**: R. L. Graham and H. O. Pollak (1970); Thomas Stoll (2005, 2006).
- **Upstream Source**: [ErdosProblems/lean-erdospb](https://github.com/ErdosProblems/lean-erdospb) (`Erdos482.lean`).
- **Formal Contributors**: OpenAI Codex, GPT-5.6 Sol.
- **Root Theorem**: `JSP_000391.jsp_000391`
- **Toolchain**: Lean 4 `v4.33.0` with Mathlib.
- **Axioms**: `[propext, Classical.choice, Quot.sound]`.
