import FiniteSimpleGroupsClassificationCanonicalLaneLean.LieTypeGroups

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

inductive SporadicFamily where
  | Monster
  | BabyMonster
  | Fischer
  | Conway
  | Mathieu
  | Janko
  | Suzuki
  | Rudvalis
  | O_Nan
  | Lyons
  | Thompson
  | HaradaNorton
  | HigmanSims
  | McLaughlin
  | Held
  | others (name : String)

structure SporadicGroup where
  family : SporadicFamily
  order : ℕ
  groupObject : SimpleGroupObject

structure SporadicEvidence (S : SporadicGroup) where
  groupSimple : SimpleGroup S.groupObject.carrier
  groupFinite : FiniteGroup S.groupObject.carrier
  orderCorrect : Nat.card S.groupObject.carrier = S.order
  classificationCheckClosed : S.groupObject.classificationCheck

def SporadicClosed (S : SporadicGroup) : Prop :=
  S.groupObject.simple ∧ S.groupObject.finite ∧ S.groupObject.classificationCheck

theorem sporadic_closed_from_evidence (S : SporadicGroup) (E : SporadicEvidence S) :
    SporadicClosed S := by
  exact And.intro E.groupSimple (And.intro E.groupFinite E.classificationCheckClosed)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
