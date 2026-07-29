import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure SpectralGapPackage where
  operator : Type u
  spectrum : Type v
  gapPositive : Prop
  decayRateImplication : Prop

structure SpectralGapEvidence (S : SpectralGapPackage) where
  gapPositiveClosed : S.gapPositive
  decayRateImplicationClosed : S.decayRateImplication

def SpectralGapClosed (S : SpectralGapPackage) : Prop :=
  S.gapPositive ∧ S.decayRateImplication

theorem spectral_gap_closed_from_evidence (S : SpectralGapPackage) (E : SpectralGapEvidence S) :
    SpectralGapClosed S := by
  exact And.intro E.gapPositiveClosed E.decayRateImplicationClosed

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse