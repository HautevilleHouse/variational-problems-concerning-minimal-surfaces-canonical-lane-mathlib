import VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def minimalSurfaceProjection : Projection MinimalSurfaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem minimal_surface_projection_idempotent (x : MinimalSurfaceEndgameState) :
    minimalSurfaceProjection.toFun (minimalSurfaceProjection.toFun x) = minimalSurfaceProjection.toFun x := by
  exact minimalSurfaceProjection.idempotent x

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
