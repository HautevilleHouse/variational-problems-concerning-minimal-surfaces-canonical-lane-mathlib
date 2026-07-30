import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure StabilityPackage where
  secondVariation : Prop
  jacobiOperator : Prop
  indexForm : Prop
  stabilityCondition : secondVariation → indexForm → Prop

structure StabilityEvidence (S : StabilityPackage) where
  secondVariationClosed : S.secondVariation
  jacobiOperatorClosed : S.jacobiOperator
  indexFormClosed : S.indexForm
  stabilityConditionClosed : S.stabilityCondition S.secondVariationClosed S.indexFormClosed

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.secondVariation ∧ S.indexForm ∧ S.stabilityCondition S.secondVariation S.indexForm

theorem stability_closed_from_evidence (S : StabilityPackage)
    (E : StabilityEvidence S) : StabilityClosed S := by
  exact And.intro E.secondVariationClosed
    (And.intro E.indexFormClosed E.stabilityConditionClosed)

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
