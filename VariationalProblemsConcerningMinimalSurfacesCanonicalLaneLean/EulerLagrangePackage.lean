import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure EulerLagrangePackage (M : Type) [TopologicalSpace M] where
  surface : Type
  embedding : surface → M
  meanCurvature : Prop
  vanishingCondition : Prop
  boundaryConditions : Prop
  regularity : Prop

structure EulerLagrangeEvidence (M : Type) [TopologicalSpace M] (E : EulerLagrangePackage M) where
  meanCurvatureClosed : E.meanCurvature
  vanishingConditionClosed : E.vanishingCondition
  boundaryConditionsClosed : E.boundaryConditions
  regularityClosed : E.regularity

def EulerLagrangeClosed (M : Type) [TopologicalSpace M] (E : EulerLagrangePackage M) : Prop :=
  E.meanCurvature ∧ E.vanishingCondition ∧ E.boundaryConditions ∧ E.regularity

theorem euler_lagrange_closed_from_evidence
    (M : Type) [TopologicalSpace M] (E : EulerLagrangePackage M)
    (Ev : EulerLagrangeEvidence M E) : EulerLagrangeClosed M E := by
  exact And.intro Ev.meanCurvatureClosed
    (And.intro Ev.vanishingConditionClosed
      (And.intro Ev.boundaryConditionsClosed Ev.regularityClosed))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse