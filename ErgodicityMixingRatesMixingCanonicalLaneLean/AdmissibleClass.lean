import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure AdmissibleClass where
  object : ErgodicityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ErgodicityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse