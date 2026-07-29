import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean.DecayEstimates

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure CentralLimitMixingPackage {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    {D : DecayEstimatesPackage E} (EvD : DecayEstimatesEvidence D) where
  cltForMixingSequences : Prop
  berryEsseenBound : Prop
  invariancePrinciple : Prop

structure CentralLimitMixingEvidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    {D : DecayEstimatesPackage E} {EvD : DecayEstimatesEvidence D}
    (C : CentralLimitMixingPackage EvD) where
  cltForMixingSequencesClosed : C.cltForMixingSequences
  berryEsseenBoundClosed : C.berryEsseenBound
  invariancePrincipleClosed : C.invariancePrinciple

def CentralLimitMixingClosed {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    {D : DecayEstimatesPackage E} {EvD : DecayEstimatesEvidence D}
    (C : CentralLimitMixingPackage EvD) : Prop :=
  C.cltForMixingSequences ∧ C.berryEsseenBound ∧ C.invariancePrinciple

theorem central_limit_mixing_closed_from_evidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    {D : DecayEstimatesPackage E} {EvD : DecayEstimatesEvidence D}
    (C : CentralLimitMixingPackage EvD) (Ev : CentralLimitMixingEvidence C) : CentralLimitMixingClosed C := by
  exact And.intro Ev.cltForMixingSequencesClosed
    (And.intro Ev.berryEsseenBoundClosed Ev.invariancePrincipleClosed)

end HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse