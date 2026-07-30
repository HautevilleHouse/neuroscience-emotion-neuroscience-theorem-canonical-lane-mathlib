import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure NeuralPopulationModel where
  region : String
  firingRate : ℝ → ℝ
  couplingStrength : ℝ
  timeConstant : ℝ

def neuralPopulationClosed (N : NeuralPopulationModel) : Prop := True

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse