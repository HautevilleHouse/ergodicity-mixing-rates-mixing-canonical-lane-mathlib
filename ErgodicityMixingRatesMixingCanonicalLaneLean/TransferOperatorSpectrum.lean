import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure TransferOperatorSpectrumPackage where
  transferOperator : Type u
  spectralRadius : Prop
  essentialSpectralRadius : Prop
  peripheralSpectrum : Prop
  mixingRateFromSpectrum : Prop
  spectralGapEquivalent : Prop

structure TransferOperatorSpectrumEvidence (P : TransferOperatorSpectrumPackage) where
  transferOperatorClosed : P.transferOperator
  spectralRadiusClosed : P.spectralRadius
  essentialSpectralRadiusClosed : P.essentialSpectralRadius
  peripheralSpectrumClosed : P.peripheralSpectrum
  mixingRateFromSpectrumClosed : P.mixingRateFromSpectrum
  spectralGapEquivalentClosed : P.spectralGapEquivalent

def TransferOperatorSpectrumClosed (P : TransferOperatorSpectrumPackage) : Prop :=
  P.transferOperator ∧ P.spectralRadius ∧ P.essentialSpectralRadius ∧ P.peripheralSpectrum ∧ P.mixingRateFromSpectrum ∧ P.spectralGapEquivalent

theorem transfer_operator_spectrum_closed_from_evidence (P : TransferOperatorSpectrumPackage) (E : TransferOperatorSpectrumEvidence P) : TransferOperatorSpectrumClosed P := by
  exact And.intro E.transferOperatorClosed (And.intro E.spectralRadiusClosed (And.intro E.essentialSpectralRadiusClosed (And.intro E.peripheralSpectrumClosed (And.intro E.mixingRateFromSpectrumClosed E.spectralGapEquivalentClosed))))

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse