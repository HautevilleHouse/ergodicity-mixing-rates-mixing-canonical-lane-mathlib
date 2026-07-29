import canonicalLaneMathlib.AdmissibleClass
import ErgodicityMixingRatesMixingCanonicalLaneLean.MixingRatesPackage

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure MixingRatesEvidenceTerms (M : MixingRatesPackage) where
  decayRateClosed : M.decayRate
  correlationDecayClosed : M.correlationDecay
  spectralGapClosed : M.spectralGap
  mixingRatesClosed : MixingRatesClosed M

def MixingRatesPackage.evidenceTerms (M : MixingRatesPackage) (E : MixingRatesEvidence M) : MixingRatesEvidenceTerms M :=
  {
    decayRateClosed := E.decayRateClosed
    correlationDecayClosed := E.correlationDecayClosed
    spectralGapClosed := E.spectralGapClosed
    mixingRatesClosed := mixing_rates_closed_from_evidence M E
  }

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse