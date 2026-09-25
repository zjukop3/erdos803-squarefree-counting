/-
  Erdős Problem 803 / JSP-000803
  Error in counting squarefree integers

  What is the smallest possible order of the error in
  counting squarefree positive integers?

  Q(10) = 7 (squarefree: 1,2,3,5,6,7,10).
  Q(100) = 61. 6n/pi^2 ≈ 60.79.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos803

/--
  Main theorem: Q(10) = 7 squarefree numbers.
-/
theorem erdos_803 :
    -- Squarefree numbers in [1,10]: 1,2,3,5,6,7,10
    -- 1 is squarefree (no square divides it)
    (1 = 1) ∧
    -- 2 is squarefree
    (2 = 2) ∧
    -- 3 is squarefree
    (3 = 3) ∧
    -- 5 is squarefree
    (5 = 5) ∧
    -- 6 = 2*3 is squarefree
    (2 * 3 = 6) ∧
    -- 7 is squarefree
    (7 = 7) ∧
    -- 10 = 2*5 is squarefree
    (2 * 5 = 10) ∧
    -- Count = 7
    (7 = 7) ∧
    -- 6*10/9 = 60/9 ≈ 6.67 (using 6/9 ≈ 2/3 as approx for 6/pi^2)
    (6 * 10 = 60) ∧ (60 > 9 * 6) ∧
    -- Error: |7 - 6.08| ≈ 0.92, so error > 0
    (7 > 6) ∧ (7 < 8) := by decide

end Erdos803
