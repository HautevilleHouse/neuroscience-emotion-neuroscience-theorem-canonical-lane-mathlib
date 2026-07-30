import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionConductances : Type v
  gatingVariables : Type w
  currentBalanceEquation : Prop
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop
  membranePotentialTerm : membranePotential
  ionConductancesTerm : ionConductances
  gatingVariablesTerm : gatingVariables

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  currentBalanceEquationClosed : H.currentBalanceEquation
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.currentBalanceEquation ∧ H.sodiumChannelDynamics ∧ H.potassiumChannelDynamics ∧
  H.leakageCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.currentBalanceEquationClosed
    (And.intro E.sodiumChannelDynamicsClosed
      (And.intro E.potassiumChannelDynamicsClosed
        (And.intro E.leakageCurrentClosed E.actionPotentialGenerationClosed)))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse