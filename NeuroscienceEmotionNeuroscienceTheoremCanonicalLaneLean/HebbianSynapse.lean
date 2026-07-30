import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HebbianSynapse where
  preNeuron : String
  postNeuron : String
  plasticityRate : ℝ
  weight : ℝ

def hebbianClosed (H : HebbianSynapse) : Prop := True

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse