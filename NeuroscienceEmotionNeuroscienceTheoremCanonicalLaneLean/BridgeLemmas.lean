import HautevilleHouse.NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse