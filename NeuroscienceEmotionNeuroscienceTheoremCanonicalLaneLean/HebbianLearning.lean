import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  weightUpdateEquation : Prop
  correlationDependence : Prop
  activityCoincidence : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  weightUpdateEquationClosed : H.weightUpdateEquation
  correlationDependenceClosed : H.correlationDependence
  activityCoincidenceClosed : H.activityCoincidence

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.weightUpdateEquation ∧ H.correlationDependence ∧ H.activityCoincidence

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.weightUpdateEquationClosed
    (And.intro E.correlationDependenceClosed E.activityCoincidenceClosed)

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
