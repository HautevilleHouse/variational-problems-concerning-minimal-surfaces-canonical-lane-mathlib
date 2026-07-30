import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure StabilityInequalityPackage where
  minimalSurface : Type u
  secondVariation : Prop
  jacobiOperator : Prop
  stabilityCondition : Prop
  indexLowerBound : Prop

structure StabilityInequalityEvidence (S : StabilityInequalityPackage) where
  secondVariationClosed : S.secondVariation
  jacobiOperatorClosed : S.jacobiOperator
  stabilityConditionClosed : S.stabilityCondition
  indexLowerBoundClosed : S.indexLowerBound

def StabilityInequalityClosed (S : StabilityInequalityPackage) : Prop :=
  S.secondVariation ∧ S.jacobiOperator ∧ S.stabilityCondition ∧ S.indexLowerBound

theorem stability_inequality_closed_from_evidence
    (S : StabilityInequalityPackage) (E : StabilityInequalityEvidence S) :
    StabilityInequalityClosed S := by
  exact And.intro E.secondVariationClosed
    (And.intro E.jacobiOperatorClosed
      (And.intro E.stabilityConditionClosed E.indexLowerBoundClosed))

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse