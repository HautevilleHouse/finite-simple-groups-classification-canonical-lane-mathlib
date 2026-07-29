import FiniteSimpleGroupsClassificationCanonicalLaneLean.AlternatingGroups
import FiniteSimpleGroupsClassificationCanonicalLaneLean.LieTypeGroups
import FiniteSimpleGroupsClassificationCanonicalLaneLean.SporadicGroups

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure ClassificationProofPackage where
  alternatingCase : AlternatingGroup
  alternatingEvidence : AlternatingEvidence alternatingCase
  lieTypeCase : LieTypeGroup
  lieTypeEvidence : LieTypeEvidence lieTypeCase
  sporadicCase : SporadicGroup
  sporadicEvidence : SporadicEvidence sporadicCase

def ClassificationProofClosed (C : ClassificationProofPackage) : Prop :=
  AlternatingClosed C.alternatingCase ∧
  LieTypeClosed C.lieTypeCase ∧
  SporadicClosed C.sporadicCase

theorem classification_proof_closed_from_evidence (C : ClassificationProofPackage) :
    ClassificationProofClosed C := by
  refine And.intro (alternating_closed_from_evidence C.alternatingCase C.alternatingEvidence)
    (And.intro (lie_type_closed_from_evidence C.lieTypeCase C.lieTypeEvidence)
      (sporadic_closed_from_evidence C.sporadicCase C.sporadicEvidence))

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
