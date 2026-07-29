import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ErgodicityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse