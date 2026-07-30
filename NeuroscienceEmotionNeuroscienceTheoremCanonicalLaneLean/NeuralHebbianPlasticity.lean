import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeights : Type u
  learningRule : Type v
  preSynapticActivity : Type w
  postSynapticActivity : Type x
  weightChangeEquation : Prop
  correlationBased : Prop
  locality : Prop
  cooperativity : Prop
  synapticWeightsTerm : synapticWeights
  learningRuleTerm : learningRule
  preSynapticActivityTerm : preSynapticActivity
  postSynapticActivityTerm : postSynapticActivity

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightChangeEquationClosed : H.weightChangeEquation
  correlationBasedClosed : H.correlationBased
  localityClosed : H.locality
  cooperativityClosed : H.cooperativity

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightChangeEquation ∧ H.correlationBased ∧ H.locality ∧ H.cooperativity

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.weightChangeEquationClosed
    (And.intro E.correlationBasedClosed
      (And.intro E.localityClosed E.cooperativityClosed))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse