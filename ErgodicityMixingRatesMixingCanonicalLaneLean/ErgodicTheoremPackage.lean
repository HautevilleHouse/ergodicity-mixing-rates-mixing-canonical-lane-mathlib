import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure ErgodicTheoremPackage where
  invariantMeasure : Type u
  ergodicDecomposition : Prop
  individualErgodicTheorem : Prop
  vonNeumannErgodicTheorem : Prop

structure ErgodicTheoremEvidence (E : ErgodicTheoremPackage) where
  ergodicDecompositionClosed : E.ergodicDecomposition
  individualErgodicTheoremClosed : E.individualErgodicTheorem
  vonNeumannErgodicTheoremClosed : E.vonNeumannErgodicTheorem

def ErgodicTheoremClosed (E : ErgodicTheoremPackage) : Prop :=
  E.ergodicDecomposition ∧ E.individualErgodicTheorem ∧ E.vonNeumannErgodicTheorem

theorem ergodic_theorem_closed_from_evidence (E : ErgodicTheoremPackage) (Ev : ErgodicTheoremEvidence E) :
    ErgodicTheoremClosed E := by
  exact And.intro Ev.ergodicDecompositionClosed (And.intro Ev.individualErgodicTheoremClosed Ev.vonNeumannErgodicTheoremClosed)

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse