import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean

structure BernsteinTheoremPackage where
  dimension : ℕ
  entireMinimalGraph : Prop
  linearFunction : Prop
  dimensionBound : Prop
  conclusion : entireMinimalGraph → linearFunction

structure BernsteinTheoremEvidence (B : BernsteinTheoremPackage) where
  dimensionBoundClosed : B.dimensionBound
  entireMinimalGraphClosed : B.entireMinimalGraph
  linearFunctionClosed : B.linearFunction
  conclusionClosed : B.conclusion B.entireMinimalGraphClosed = B.linearFunctionClosed

def BernsteinTheoremClosed (B : BernsteinTheoremPackage) : Prop :=
  B.dimensionBound ∧ (B.entireMinimalGraph → B.linearFunction)

theorem bernstein_theorem_closed_from_evidence (B : BernsteinTheoremPackage)
    (E : BernsteinTheoremEvidence B) : BernsteinTheoremClosed B := by
  refine And.intro E.dimensionBoundClosed ?_
  intro h
  have := E.conclusionClosed
  simpa [h] using this

end VariationalProblemsConcerningMinimalSurfacesCanonicalLaneLean
end HautevilleHouse
