import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure MixingRateHierarchyPackage where
  strongMixing : Prop
  weakMixing : Prop
  ergodic : Prop
  mixingRateExponential : Prop
  mixingRatePolynomial : Prop
  mixingRateLogarithmic : Prop
  hierarchyConsistent : Prop

structure MixingRateHierarchyEvidence (P : MixingRateHierarchyPackage) where
  strongMixingClosed : P.strongMixing
  weakMixingClosed : P.weakMixing
  ergodicClosed : P.ergodic
  mixingRateExponentialClosed : P.mixingRateExponential
  mixingRatePolynomialClosed : P.mixingRatePolynomial
  mixingRateLogarithmicClosed : P.mixingRateLogarithmic
  hierarchyConsistentClosed : P.hierarchyConsistent

def MixingRateHierarchyClosed (P : MixingRateHierarchyPackage) : Prop :=
  P.strongMixing ∧ P.weakMixing ∧ P.ergodic ∧ P.mixingRateExponential ∧ P.mixingRatePolynomial ∧ P.mixingRateLogarithmic ∧ P.hierarchyConsistent

theorem mixing_rate_hierarchy_closed_from_evidence (P : MixingRateHierarchyPackage) (E : MixingRateHierarchyEvidence P) : MixingRateHierarchyClosed P := by
  exact And.intro E.strongMixingClosed (And.intro E.weakMixingClosed (And.intro E.ergodicClosed (And.intro E.mixingRateExponentialClosed (And.intro E.mixingRatePolynomialClosed (And.intro E.mixingRateLogarithmicClosed E.hierarchyConsistentClosed)))))

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse