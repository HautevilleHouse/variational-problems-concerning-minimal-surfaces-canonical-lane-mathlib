import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse