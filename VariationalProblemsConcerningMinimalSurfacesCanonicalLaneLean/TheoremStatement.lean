import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfaces

structure MinimalSurfaceAdmittedObject where
  space : MinimalSurfaceSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure MinimalSurfaceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

def MinimalSurfaceWitnessClosed (O : MinimalSurfaceAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end VariationalProblemsConcerningMinimalSurfaces
end HautevilleHouse
