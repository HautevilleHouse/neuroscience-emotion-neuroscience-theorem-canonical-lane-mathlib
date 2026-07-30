import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyChannel where
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  membraneCapacitance : ℝ

def hodgkinHuxleyClosed (H : HodgkinHuxleyChannel) : Prop := True

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse