import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean.MixingRatesPackage

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure DecayEstimatesPackage {M : MixingRatesPackage} (E : MixingRatesEvidence M) where
  exponentialDecay : Prop
  polynomialDecay : Prop
  subexponentialDecay : Prop
  decayRateBound : Prop

structure DecayEstimatesEvidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (D : DecayEstimatesPackage E) where
  exponentialDecayClosed : D.exponentialDecay
  polynomialDecayClosed : D.polynomialDecay
  subexponentialDecayClosed : D.subexponentialDecay
  decayRateBoundClosed : D.decayRateBound

def DecayEstimatesClosed {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (D : DecayEstimatesPackage E) : Prop :=
  D.exponentialDecay ∧ D.polynomialDecay ∧ D.subexponentialDecay ∧ D.decayRateBound

theorem decay_estimates_closed_from_evidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (D : DecayEstimatesPackage E) (Ev : DecayEstimatesEvidence D) : DecayEstimatesClosed D := by
  exact And.intro Ev.exponentialDecayClosed
    (And.intro Ev.polynomialDecayClosed
      (And.intro Ev.subexponentialDecayClosed Ev.decayRateBoundClosed))

end HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse