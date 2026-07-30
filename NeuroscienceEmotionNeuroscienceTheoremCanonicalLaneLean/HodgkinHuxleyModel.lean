import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type
  ionChannelState : Type
  hhEquations : Prop
  actionPotentialGenerated : Prop
  conductanceParameters : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  hhEquationsClosed : H.hhEquations
  actionPotentialGeneratedClosed : H.actionPotentialGenerated
  conductanceParametersClosed : H.conductanceParameters

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.hhEquations ∧ H.actionPotentialGenerated ∧ H.conductanceParameters

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.hhEquationsClosed (And.intro E.actionPotentialGeneratedClosed E.conductanceParametersClosed)

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse