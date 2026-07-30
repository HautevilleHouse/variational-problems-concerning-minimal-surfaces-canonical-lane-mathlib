import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure MinimalSurface where
  carrier : Type
  topology : TopologicalSpace carrier
  riemannian : RiemannianManifold carrier
  dimension : Nat
  boundary : MinimalSurface → Set carrier

structure MinimalSurfaceObject where
  surface : MinimalSurface
  minimizingProperty : Prop
  regularPoint : Prop
  countablyRectifiable : Prop
  conclusion : minimizingProperty ∧ regularPoint ∧ countablyRectifiable

def MinimalSurfaceWitnessClosed (O : MinimalSurfaceObject) : Prop :=
  O.minimizingProperty ∧ O.regularPoint ∧ O.countablyRectifiable

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse