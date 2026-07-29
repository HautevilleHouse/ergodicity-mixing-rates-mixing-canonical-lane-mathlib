import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean.MixingRatesPackage

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure MixingCoefficientsPackage {M : MixingRatesPackage} (E : MixingRatesEvidence M) where
  alphaMixing : Prop
  betaMixing : Prop
  phiMixing : Prop
  rhoMixing : Prop

structure MixingCoefficientsEvidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (C : MixingCoefficientsPackage E) where
  alphaMixingClosed : C.alphaMixing
  betaMixingClosed : C.betaMixing
  phiMixingClosed : C.phiMixing
  rhoMixingClosed : C.rhoMixing

def MixingCoefficientsClosed {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (C : MixingCoefficientsPackage E) : Prop :=
  C.alphaMixing ∧ C.betaMixing ∧ C.phiMixing ∧ C.rhoMixing

theorem mixing_coefficients_closed_from_evidence {M : MixingRatesPackage} {E : MixingRatesEvidence M}
    (C : MixingCoefficientsPackage E) (Ev : MixingCoefficientsEvidence C) : MixingCoefficientsClosed C := by
  exact And.intro Ev.alphaMixingClosed
    (And.intro Ev.betaMixingClosed
      (And.intro Ev.phiMixingClosed Ev.rhoMixingClosed))

end HautevilleHouse.ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse