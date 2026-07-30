import VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MinimalSurfaceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MinimalSurfaceAdmittedObject where
  space : MinimalSurfaceSpace
  twoDimensional : Prop
  meanCurvatureZero : Prop
  areaMinimizing : Prop
  boundaryFixed : Prop
  embedded : Prop
  conclusion : embedded

structure MinimalSurfaceEndgameState where
  object : MinimalSurfaceAdmittedObject

def MinimalSurfaceWitnessClosed (O : MinimalSurfaceAdmittedObject) : Prop :=
  O.embedded

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
