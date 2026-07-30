import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure RegularityTheoryPackage where
  weakSolution : Type u
  interiorRegularity : Prop
  boundaryRegularity : Prop
  higherRegularity : Prop

structure RegularityTheoryEvidence (R : RegularityTheoryPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  higherRegularityClosed : R.higherRegularity

def RegularityTheoryClosed (R : RegularityTheoryPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.higherRegularity

theorem regularity_theory_closed_from_evidence
    (R : RegularityTheoryPackage) (E : RegularityTheoryEvidence R) :
    RegularityTheoryClosed R := by
  exact And.intro E.interiorRegularityClosed
    (And.intro E.boundaryRegularityClosed E.higherRegularityClosed)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse