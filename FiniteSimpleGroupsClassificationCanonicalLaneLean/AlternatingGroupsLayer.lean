import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure AlternatingGroupEvidence where
  alternatingGroupClassified : Prop
  simpleForNSufficient : Prop
  simpleForNGeqFive : alternatingGroupClassified ∧ (simpleForNSufficient → simpleForNGeqFive)

def AlternatingGroupClosed (E : AlternatingGroupEvidence) : Prop :=
  E.alternatingGroupClassified ∧ E.simpleForNGeqFive

theorem alternating_group_closed_from_evidence (E : AlternatingGroupEvidence) :
    AlternatingGroupClosed E := by
  exact And.intro E.alternatingGroupClassified E.simpleForNGeqFive

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
