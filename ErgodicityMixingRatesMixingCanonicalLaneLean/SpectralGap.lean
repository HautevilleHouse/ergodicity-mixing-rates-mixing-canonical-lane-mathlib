import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean.MixingRatesPackage

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure SpectralGapPackage {M : MixingRatesPackage} (E : MixingRatesEvidence M) where
  operator : Type u
  spectralGapPositive : Prop
  poincareInequality : Prop
  laxPhillipsEstimate : Prop

structure SpectralGapEvidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (S : SpectralGapPackage E) where
  spectralGapPositiveClosed : S.spectralGapPositive
  poincareInequalityClosed : S.poincareInequality
  laxPhillipsEstimateClosed : S.laxPhillipsEstimate

def SpectralGapClosed {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (S : SpectralGapPackage E) : Prop :=
  S.spectralGapPositive ∧ S.poincareInequality ∧ S.laxPhillipsEstimate

theorem spectral_gap_closed_from_evidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (S : SpectralGapPackage E) (Ev : SpectralGapEvidence S) : SpectralGapClosed S := by
  exact And.intro Ev.spectralGapPositiveClosed
    (And.intro Ev.poincareInequalityClosed Ev.laxPhillipsEstimateClosed)

end HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse