import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure MixingRatesPackage where
  measurePreservingSystem : Type u
  mixingRate : Type v
  decayRate : Prop
  correlationDecay : Prop
  spectralGap : Prop

structure MixingRatesEvidence (M : MixingRatesPackage) where
  decayRateClosed : M.decayRate
  correlationDecayClosed : M.correlationDecay
  spectralGapClosed : M.spectralGap

def MixingRatesClosed (M : MixingRatesPackage) : Prop :=
  M.decayRate ∧ M.correlationDecay ∧ M.spectralGap

theorem mixing_rates_closed_from_evidence (M : MixingRatesPackage) (E : MixingRatesEvidence M) :
    MixingRatesClosed M := by
  exact And.intro E.decayRateClosed (And.intro E.correlationDecayClosed E.spectralGapClosed)

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse