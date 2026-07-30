import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure MinimalSurfaceAreaFunctional where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  ambientRiemannianMetric : Type v
  surface : Type w
  surfaceTopology : TopologicalSpace surface
  embedding : surface → ambientManifold
  areaFunctional : (surface → ambientManifold) → ℝ
  firstVariationFormula : Prop
  eulerLagrangeEquation : Prop
  stabilityCondition : Prop

structure MinimalSurfaceAreaFunctionalEvidence (A : MinimalSurfaceAreaFunctional) where
  firstVariationFormulaClosed : A.firstVariationFormula
  eulerLagrangeEquationClosed : A.eulerLagrangeEquation
  stabilityConditionClosed : A.stabilityCondition

def MinimalSurfaceAreaFunctionalClosed (A : MinimalSurfaceAreaFunctional) : Prop :=
  A.firstVariationFormula ∧ A.eulerLagrangeEquation ∧ A.stabilityCondition

theorem minimal_surface_area_functional_closed_from_evidence
    (A : MinimalSurfaceAreaFunctional) (E : MinimalSurfaceAreaFunctionalEvidence A) :
    MinimalSurfaceAreaFunctionalClosed A := by
  exact And.intro E.firstVariationFormulaClosed
    (And.intro E.eulerLagrangeEquationClosed E.stabilityConditionClosed)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse