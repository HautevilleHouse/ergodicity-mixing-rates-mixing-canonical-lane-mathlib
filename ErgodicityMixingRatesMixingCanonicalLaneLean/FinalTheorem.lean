import canonicalLaneMathlib.AdmissibleClass
import ErgodicityMixingRatesMixingCanonicalLaneLean.BridgeLemmas
import ErgodicityMixingRatesMixingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

def ConstrainedErgodicMixingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ergodic_mixing_endgame (A : AdmissibleClass) : ConstrainedErgodicMixingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse