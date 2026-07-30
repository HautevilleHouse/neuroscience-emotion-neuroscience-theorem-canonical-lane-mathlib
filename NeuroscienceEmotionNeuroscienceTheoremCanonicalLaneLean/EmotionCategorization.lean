import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure EmotionCategorizationPackage where
  emotionLabels : Type u
  neuralCorrelates : Type v
  appraisalDimensions : Type w
  basicEmotionHypothesis : Prop
  dimensionalModel : Prop
  appraisalTheory : Prop

structure EmotionCategorizationEvidence (E : EmotionCategorizationPackage) where
  basicEmotionHypothesisClosed : E.basicEmotionHypothesis
  dimensionalModelClosed : E.dimensionalModel
  appraisalTheoryClosed : E.appraisalTheory

def EmotionCategorizationClosed (E : EmotionCategorizationPackage) : Prop :=
  E.basicEmotionHypothesis ∧ E.dimensionalModel ∧ E.appraisalTheory

theorem emotion_categorization_closed_from_evidence (E : EmotionCategorizationPackage) (Ev : EmotionCategorizationEvidence E) : EmotionCategorizationClosed E := by
  exact And.intro Ev.basicEmotionHypothesisClosed
    (And.intro Ev.dimensionalModelClosed Ev.appraisalTheoryClosed)

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
