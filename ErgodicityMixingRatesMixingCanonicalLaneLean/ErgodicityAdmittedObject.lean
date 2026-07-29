import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure ErgodicityAdmittedObject where
  system : Type u
  measure : Type v
  invariant : Prop
  mixing : Prop
  conclusion : mixing

def ErgodicityWitnessClosed (O : ErgodicityAdmittedObject) : Prop :=
  O.mixing

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse