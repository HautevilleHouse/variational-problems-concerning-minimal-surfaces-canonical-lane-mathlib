import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure MinimalSurfaceAdmittedObject where
  surface : Type
  topology : TopologicalSpace surface
  riemannianMetric : Prop
  areaFunctionalDefined : Prop
  criticalPointCondition : Prop
  conclusion : criticalPointCondition

structure MinimalSurfaceAdmissibleClass where
  object : MinimalSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MinimalSurfaceAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse