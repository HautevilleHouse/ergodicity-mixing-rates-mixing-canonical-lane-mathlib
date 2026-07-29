import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure MixingMeasureClassificationPackage where
  invariantMeasure : Type u
  ergodicMeasure : Prop
  mixingMeasure : Prop
  bernoulliMeasure : Prop
  kolmogorovMeasure : Prop
  measureClassificationComplete : Prop

structure MixingMeasureClassificationEvidence (P : MixingMeasureClassificationPackage) where
  invariantMeasureClosed : P.invariantMeasure
  ergodicMeasureClosed : P.ergodicMeasure
  mixingMeasureClosed : P.mixingMeasure
  bernoulliMeasureClosed : P.bernoulliMeasure
  kolmogorovMeasureClosed : P.kolmogorovMeasure
  measureClassificationCompleteClosed : P.measureClassificationComplete

def MixingMeasureClassificationClosed (P : MixingMeasureClassificationPackage) : Prop :=
  P.invariantMeasure ∧ P.ergodicMeasure ∧ P.mixingMeasure ∧ P.bernoulliMeasure ∧ P.kolmogorovMeasure ∧ P.measureClassificationComplete

theorem mixing_measure_classification_closed_from_evidence (P : MixingMeasureClassificationPackage) (E : MixingMeasureClassificationEvidence P) : MixingMeasureClassificationClosed P := by
  exact And.intro E.invariantMeasureClosed (And.intro E.ergodicMeasureClosed (And.intro E.mixingMeasureClosed (And.intro E.bernoulliMeasureClosed (And.intro E.kolmogorovMeasureClosed E.measureClassificationCompleteClosed))))

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse