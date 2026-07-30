import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure MinimalSurfaceAnalyticFoundation where
  plateau : PlateauSolution
  plateauEvidence : PlateauEvidence plateau
  regularity : SzendroiRegularityResult
  regularityEvidence : SzendroiRegularityEvidence regularity
  minimalSurfaceObject : MinimalSurfaceObject
  closureFromPlateau : MinimalSurfaceWitnessClosed minimalSurfaceObject

def MinimalSurfaceAnalyticFoundationClosed (F : MinimalSurfaceAnalyticFoundation) : Prop :=
  PlateauClosed F.plateau ∧ SzendroiRegularityClosed F.regularity ∧ MinimalSurfaceWitnessClosed F.minimalSurfaceObject

theorem minimal_surface_analytic_foundation_closed_from_evidence
    (F : MinimalSurfaceAnalyticFoundation) : MinimalSurfaceAnalyticFoundationClosed F := by
  exact And.intro (plateau_closed_from_evidence F.plateau F.plateauEvidence)
    (And.intro (szendroi_regularity_closed_from_evidence F.regularity F.regularityEvidence)
      F.closureFromPlateau)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse