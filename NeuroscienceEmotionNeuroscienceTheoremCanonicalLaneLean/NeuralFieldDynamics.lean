import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure NeuralFieldPackage where
  neuralPopulationActivity : Type u
  spatialDomain : Type v
  connectivityKernel : Type w
  fieldEquation : Prop
  lateralInhibition : Prop
  patternFormation : Prop
  travelingWaves : Prop
  neuralPopulationActivityTerm : neuralPopulationActivity
  spatialDomainTerm : spatialDomain
  connectivityKernelTerm : connectivityKernel

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  fieldEquationClosed : N.fieldEquation
  lateralInhibitionClosed : N.lateralInhibition
  patternFormationClosed : N.patternFormation
  travelingWavesClosed : N.travelingWaves

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.fieldEquation ∧ N.lateralInhibition ∧ N.patternFormation ∧ N.travelingWaves

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.lateralInhibitionClosed
      (And.intro E.patternFormationClosed E.travelingWavesClosed))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse