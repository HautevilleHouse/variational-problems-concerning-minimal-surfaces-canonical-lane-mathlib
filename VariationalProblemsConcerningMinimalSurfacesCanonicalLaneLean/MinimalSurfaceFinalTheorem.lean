import canonicalLaneMathlib.AdmissibleClass
import MinimalSurfaceBridgeLemmas
import MinimalSurfaceGateLemmas

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

def ConstrainedMinimalSurfaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_minimal_surface_endgame (A : AdmissibleClass) :
    ConstrainedMinimalSurfaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse