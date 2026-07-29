import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure SpectralGapDecayPackage where
  spectralGap : Prop
  spectralGapPositive : Prop
  exponentialDecayCorrelation : Prop
  poincareInequality : Prop
  logSobolevInequality : Prop
  decayRateExponential : Prop
  decayRatePolynomial : Prop

structure SpectralGapDecayEvidence (P : SpectralGapDecayPackage) where
  spectralGapClosed : P.spectralGap
  spectralGapPositiveClosed : P.spectralGapPositive
  exponentialDecayCorrelationClosed : P.exponentialDecayCorrelation
  poincareInequalityClosed : P.poincareInequality
  logSobolevInequalityClosed : P.logSobolevInequality
  decayRateExponentialClosed : P.decayRateExponential
  decayRatePolynomialClosed : P.decayRatePolynomial

def SpectralGapDecayClosed (P : SpectralGapDecayPackage) : Prop :=
  P.spectralGap ∧ P.spectralGapPositive ∧ P.exponentialDecayCorrelation ∧ P.poincareInequality ∧ P.logSobolevInequality ∧ P.decayRateExponential ∧ P.decayRatePolynomial

theorem spectral_gap_decay_closed_from_evidence (P : SpectralGapDecayPackage) (E : SpectralGapDecayEvidence P) : SpectralGapDecayClosed P := by
  exact And.intro E.spectralGapClosed (And.intro E.spectralGapPositiveClosed (And.intro E.exponentialDecayCorrelationClosed (And.intro E.poincareInequalityClosed (And.intro E.logSobolevInequalityClosed (And.intro E.decayRateExponentialClosed E.decayRatePolynomialClosed)))))

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse