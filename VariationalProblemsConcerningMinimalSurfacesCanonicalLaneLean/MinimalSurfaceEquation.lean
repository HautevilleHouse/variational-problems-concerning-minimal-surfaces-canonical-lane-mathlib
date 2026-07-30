import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure MinimalSurfaceEquationPackage (M : Type u) [TopologicalSpace M] where
  surface : Type v
  embedding : surface → M
  areaFunctional : Prop
  vanishingMeanCurvature : Prop
  firstVariationZero : Prop

structure MinimalSurfaceEquationEvidence (M : Type u) [TopologicalSpace M]
    (P : MinimalSurfaceEquationPackage M) where
  areaFunctionalClosed : P.areaFunctional
  vanishingMeanCurvatureClosed : P.vanishingMeanCurvature
  firstVariationZeroClosed : P.firstVariationZero

def MinimalSurfaceEquationClosed (M : Type u) [TopologicalSpace M]
    (P : MinimalSurfaceEquationPackage M) : Prop :=
  P.areaFunctional ∧ P.vanishingMeanCurvature ∧ P.firstVariationZero

theorem minimal_surface_equation_closed_from_evidence
    (M : Type u) [TopologicalSpace M] (P : MinimalSurfaceEquationPackage M)
    (E : MinimalSurfaceEquationEvidence M P) : MinimalSurfaceEquationClosed M P := by
  exact And.intro E.areaFunctionalClosed
    (And.intro E.vanishingMeanCurvatureClosed E.firstVariationZeroClosed)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
