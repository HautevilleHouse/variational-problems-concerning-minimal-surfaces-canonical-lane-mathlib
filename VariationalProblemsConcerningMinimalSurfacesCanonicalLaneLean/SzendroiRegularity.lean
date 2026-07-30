import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure SzendroiRegularityData where
  minimalSurface : MinimalSurface
  surfaceDimension : Nat
  ambientMetric : RiemannianMetric
  secondFundamentalFormBound : Prop
  curvatureCondition : Prop
  areaGrowthEstimate : Prop

structure SzendroiRegularityResult where
  data : SzendroiRegularityData
  interiorRegularity : Prop
  boundaryRegularity : Prop
  embeddedness : Prop
  compactnessProperty : Prop

structure SzendroiRegularityEvidence (R : SzendroiRegularityResult) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  embeddednessClosed : R.embeddedness
  compactnessPropertyClosed : R.compactnessProperty

def SzendroiRegularityClosed (R : SzendroiRegularityResult) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.embeddedness ∧ R.compactnessProperty

theorem szendroi_regularity_closed_from_evidence (R : SzendroiRegularityResult)
    (E : SzendroiRegularityEvidence R) : SzendroiRegularityClosed R := by
  exact And.intro E.interiorRegularityClosed
    (And.intro E.boundaryRegularityClosed
      (And.intro E.embeddednessClosed E.compactnessPropertyClosed))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse