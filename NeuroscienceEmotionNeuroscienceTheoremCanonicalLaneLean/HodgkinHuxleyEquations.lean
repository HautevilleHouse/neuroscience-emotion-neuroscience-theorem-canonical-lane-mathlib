import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannelConductances : Type v
  gatingVariables : Type w
  capacitanceEquation : Prop
  sodiumCurrentEquation : Prop
  potassiumCurrentEquation : Prop
  leakCurrentEquation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  capacitanceEquationClosed : H.capacitanceEquation
  sodiumCurrentEquationClosed : H.sodiumCurrentEquation
  potassiumCurrentEquationClosed : H.potassiumCurrentEquation
  leakCurrentEquationClosed : H.leakCurrentEquation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.capacitanceEquation ∧ H.sodiumCurrentEquation ∧ H.potassiumCurrentEquation ∧ H.leakCurrentEquation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.capacitanceEquationClosed
    (And.intro E.sodiumCurrentEquationClosed
      (And.intro E.potassiumCurrentEquationClosed E.leakCurrentEquationClosed))

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
