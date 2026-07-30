import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure AdmissibleClass where
  object : MinimalSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MinimalSurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
