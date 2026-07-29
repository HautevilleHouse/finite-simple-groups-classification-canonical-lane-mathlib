import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure SporadicGroupEvidence where
  mathieuGroupsClassified : Prop
  leechLatticeGroupsClassified : Prop
  monsterFamilyClassified : Prop
  pariahGroupsClassified : Prop
  allSporadicClassified : mathieuGroupsClassified ∧ leechLatticeGroupsClassified ∧ monsterFamilyClassified ∧ pariahGroupsClassified

def SporadicGroupClosed (E : SporadicGroupEvidence) : Prop :=
  E.allSporadicClassified

theorem sporadic_group_closed_from_evidence (E : SporadicGroupEvidence) :
    SporadicGroupClosed E := by
  exact E.allSporadicClassified

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
