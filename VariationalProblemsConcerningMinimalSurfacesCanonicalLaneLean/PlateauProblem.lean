import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure PlateauProblemPackage where
  boundaryCurve : Type u
  ambientSpace : Type v
  spanningSurface : Type w
  areaMinimizing : Prop
  boundaryFixed : Prop
  solutionExists : Prop

structure PlateauProblemEvidence (P : PlateauProblemPackage) where
  areaMinimizingClosed : P.areaMinimizing
  boundaryFixedClosed : P.boundaryFixed
  solutionExistsClosed : P.solutionExists

def PlateauProblemClosed (P : PlateauProblemPackage) : Prop :=
  P.areaMinimizing ∧ P.boundaryFixed ∧ P.solutionExists

theorem plateau_problem_closed_from_evidence (P : PlateauProblemPackage)
    (E : PlateauProblemEvidence P) : PlateauProblemClosed P := by
  exact And.intro E.areaMinimizingClosed
    (And.intro E.boundaryFixedClosed E.solutionExistsClosed)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
