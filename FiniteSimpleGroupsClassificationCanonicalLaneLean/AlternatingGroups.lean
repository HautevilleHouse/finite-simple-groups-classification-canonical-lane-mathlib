import FiniteSimpleGroupsClassificationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure AlternatingGroup where
  degree : ℕ
  groupObject : SimpleGroupObject

structure AlternatingEvidence (A : AlternatingGroup) where
  degreeAtLeastFive : A.degree ≥ 5
  groupSimple : SimpleGroup A.groupObject.carrier
  groupFinite : FiniteGroup A.groupObject.carrier
  classificationCheckClosed : A.groupObject.classificationCheck

def AlternatingClosed (A : AlternatingGroup) : Prop :=
  A.groupObject.simple ∧ A.groupObject.finite ∧ A.groupObject.classificationCheck

theorem alternating_closed_from_evidence (A : AlternatingGroup) (E : AlternatingEvidence A) :
    AlternatingClosed A := by
  exact And.intro E.groupSimple (And.intro E.groupFinite E.classificationCheckClosed)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
