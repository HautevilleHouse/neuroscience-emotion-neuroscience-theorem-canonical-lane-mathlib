import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure EmotionRegulation where
  neuralCircuits : Type
  prefrontalControl : Prop
  amygdalarReactivity : Prop
  reappraisalProcess : Prop
  suppressionProcess : Prop

structure EmotionRegulationEvidence (E : EmotionRegulation) where
  prefrontalControlClosed : E.prefrontalControl
  amygdalarReactivityClosed : E.amygdalarReactivity
  reappraisalProcessClosed : E.reappraisalProcess
  suppressionProcessClosed : E.suppressionProcess

def EmotionRegulationClosed (E : EmotionRegulation) : Prop :=
  E.prefrontalControl ∧ E.amygdalarReactivity ∧ E.reappraisalProcess ∧ E.suppressionProcess

theorem emotion_regulation_closed_from_evidence (E : EmotionRegulation) (Ev : EmotionRegulationEvidence E) :
    EmotionRegulationClosed E := by
  exact And.intro Ev.prefrontalControlClosed (And.intro Ev.amygdalarReactivityClosed (And.intro Ev.reappraisalProcessClosed Ev.suppressionProcessClosed))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse