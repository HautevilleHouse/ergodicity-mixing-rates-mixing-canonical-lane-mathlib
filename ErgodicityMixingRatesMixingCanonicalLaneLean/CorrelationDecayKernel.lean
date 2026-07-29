import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ErgodicityMixingRatesMixingCanonicalLaneLean

structure CorrelationDecayKernelPackage where
  dynamicalSystem : Type u
  observableSpace : Type v
  correlationFunction : Prop
  exponentialDecay : Prop
  polynomialDecay : Prop
  logarithmicDecay : Prop
  subExponentialDecay : Prop
  kernelRegularity : Prop

structure CorrelationDecayKernelEvidence (P : CorrelationDecayKernelPackage) where
  correlationFunctionClosed : P.correlationFunction
  exponentialDecayClosed : P.exponentialDecay
  polynomialDecayClosed : P.polynomialDecay
  logarithmicDecayClosed : P.logarithmicDecay
  subExponentialDecayClosed : P.subExponentialDecay
  kernelRegularityClosed : P.kernelRegularity

def CorrelationDecayKernelClosed (P : CorrelationDecayKernelPackage) : Prop :=
  P.correlationFunction ∧ P.exponentialDecay ∧ P.polynomialDecay ∧ P.logarithmicDecay ∧ P.subExponentialDecay ∧ P.kernelRegularity

theorem correlation_decay_kernel_closed_from_evidence (P : CorrelationDecayKernelPackage) (E : CorrelationDecayKernelEvidence P) : CorrelationDecayKernelClosed P := by
  exact And.intro E.correlationFunctionClosed (And.intro E.exponentialDecayClosed (And.intro E.polynomialDecayClosed (And.intro E.logarithmicDecayClosed (And.intro E.subExponentialDecayClosed E.kernelRegularityClosed))))

end ErgodicityMixingRatesMixingCanonicalLaneLean
end HautevilleHouse