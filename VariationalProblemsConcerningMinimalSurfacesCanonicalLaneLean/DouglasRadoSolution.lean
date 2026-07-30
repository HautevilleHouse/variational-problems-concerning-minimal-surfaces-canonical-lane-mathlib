import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure DouglasRadoPackage where
  boundaryCurve : Type u
  diskTypeSurface : Type v
  energyFunctional : Prop
  conformalParameterization : Prop
  areaMinimizer : Prop
  solutionExists : Prop

structure DouglasRadoEvidence (D : DouglasRadoPackage) where
  energyFunctionalClosed : D.energyFunctional
  conformalParameterizationClosed : D.conformalParameterization
  areaMinimizerClosed : D.areaMinimizer
  solutionExistsClosed : D.solutionExists

def DouglasRadoClosed (D : DouglasRadoPackage) : Prop :=
  D.energyFunctional ∧ D.conformalParameterization ∧ D.areaMinimizer ∧ D.solutionExists

theorem douglas_rado_closed_from_evidence (D : DouglasRadoPackage)
    (E : DouglasRadoEvidence D) : DouglasRadoClosed D := by
  exact And.intro E.energyFunctionalClosed
    (And.intro E.conformalParameterizationClosed
      (And.intro E.areaMinimizerClosed E.solutionExistsClosed))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
