import HautevilleHouse.NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    constrainedStatement := "constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def ConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  ConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  refine And.intro ?_ ?_
  · exact rfl
  · exact rfl

theorem constrained_theorem_closed_checked :
    ConstrainedTheoremClosed := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact rfl
  · exact rfl
  · exact rfl

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · apply theorem_statement_source_key_checked
  · apply theorem_statement_certificate_lane_checked
  · apply classical_source_boundary_carried_checked
  · apply constrained_theorem_closed_checked

end NeuroscienceEmotionNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse