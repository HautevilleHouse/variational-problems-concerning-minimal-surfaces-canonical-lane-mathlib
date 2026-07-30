import VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MinimalSurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
