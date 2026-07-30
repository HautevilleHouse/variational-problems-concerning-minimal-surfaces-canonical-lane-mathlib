import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure AreaFunctionalPackage (M : Type) [TopologicalSpace M] where
  surface : Type
  embedding : surface → M
  inducedMetric : Prop
  areaIntegrand : Prop
  areaFunctional : Prop
  firstVariationFormula : Prop

structure AreaFunctionalEvidence (M : Type) [TopologicalSpace M] (A : AreaFunctionalPackage M) where
  inducedMetricClosed : A.inducedMetric
  areaIntegrandClosed : A.areaIntegrand
  areaFunctionalClosed : A.areaFunctional
  firstVariationFormulaClosed : A.firstVariationFormula

def AreaFunctionalClosed (M : Type) [TopologicalSpace M] (A : AreaFunctionalPackage M) : Prop :=
  A.inducedMetric ∧ A.areaIntegrand ∧ A.areaFunctional ∧ A.firstVariationFormula

theorem area_functional_closed_from_evidence
    (M : Type) [TopologicalSpace M] (A : AreaFunctionalPackage M)
    (E : AreaFunctionalEvidence M A) : AreaFunctionalClosed M A := by
  exact And.intro E.inducedMetricClosed
    (And.intro E.areaIntegrandClosed
      (And.intro E.areaFunctionalClosed E.firstVariationFormulaClosed))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse