import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure ExistenceRegularityPackage (M : Type) [TopologicalSpace M] where
  solutionExists : Prop
  minimizerAchieved : Prop
  interiorRegularity : Prop
  boundaryRegularity : Prop
  uniqueContinuation : Prop

structure ExistenceRegularityEvidence (M : Type) [TopologicalSpace M] (E : ExistenceRegularityPackage M) where
  solutionExistsClosed : E.solutionExists
  minimizerAchievedClosed : E.minimizerAchieved
  interiorRegularityClosed : E.interiorRegularity
  boundaryRegularityClosed : E.boundaryRegularity
  uniqueContinuationClosed : E.uniqueContinuation

def ExistenceRegularityClosed (M : Type) [TopologicalSpace M] (E : ExistenceRegularityPackage M) : Prop :=
  E.solutionExists ∧ E.minimizerAchieved ∧ E.interiorRegularity ∧ E.boundaryRegularity ∧ E.uniqueContinuation

theorem existence_regularity_closed_from_evidence
    (M : Type) [TopologicalSpace M] (E : ExistenceRegularityPackage M)
    (Ev : ExistenceRegularityEvidence M E) : ExistenceRegularityClosed M E := by
  exact And.intro Ev.solutionExistsClosed
    (And.intro Ev.minimizerAchievedClosed
      (And.intro Ev.interiorRegularityClosed
        (And.intro Ev.boundaryRegularityClosed Ev.uniqueContinuationClosed)))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse