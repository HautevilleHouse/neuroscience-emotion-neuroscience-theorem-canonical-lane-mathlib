import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure EmotionRegulationPackage where
  prefrontalCortex : Type u
  amygdala : Type v
  hippocampus : Type w
  regulatoryPathways : Prop
  emotionalStimulusProcessing : Prop
  cognitiveReappraisal : Prop
  fearExtinction : Prop
  emotionalResponseModulation : Prop
  prefrontalCortexTerm : prefrontalCortex
  amygdalaTerm : amygdala
  hippocampusTerm : hippocampus

structure EmotionRegulationEvidence (E : EmotionRegulationPackage) where
  regulatoryPathwaysClosed : E.regulatoryPathways
  emotionalStimulusProcessingClosed : E.emotionalStimulusProcessing
  cognitiveReappraisalClosed : E.cognitiveReappraisal
  fearExtinctionClosed : E.fearExtinction
  emotionalResponseModulationClosed : E.emotionalResponseModulation

def EmotionRegulationClosed (E : EmotionRegulationPackage) : Prop :=
  E.regulatoryPathways ∧ E.emotionalStimulusProcessing ∧
  E.cognitiveReappraisal ∧ E.fearExtinction ∧ E.emotionalResponseModulation

theorem emotion_regulation_closed_from_evidence (E : EmotionRegulationPackage)
    (Ev : EmotionRegulationEvidence E) : EmotionRegulationClosed E := by
  exact And.intro Ev.regulatoryPathwaysClosed
    (And.intro Ev.emotionalStimulusProcessingClosed
      (And.intro Ev.cognitiveReappraisalClosed
        (And.intro Ev.fearExtinctionClosed Ev.emotionalResponseModulationClosed)))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse