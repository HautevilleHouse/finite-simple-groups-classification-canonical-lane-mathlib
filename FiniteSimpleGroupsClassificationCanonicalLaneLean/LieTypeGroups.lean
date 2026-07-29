import FiniteSimpleGroupsClassificationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure LieTypeGroup where
  baseField : Type
  lieType : String
  rank : ℕ
  twisted : Bool
  groupObject : SimpleGroupObject

structure LieTypeEvidence (L : LieTypeGroup) where
  fieldFinite : FiniteField L.baseField
  groupSimple : SimpleGroup L.groupObject.carrier
  groupFinite : FiniteGroup L.groupObject.carrier
  classificationCheckClosed : L.groupObject.classificationCheck

def LieTypeClosed (L : LieTypeGroup) : Prop :=
  L.groupObject.simple ∧ L.groupObject.finite ∧ L.groupObject.classificationCheck

theorem lie_type_closed_from_evidence (L : LieTypeGroup) (E : LieTypeEvidence L) :
    LieTypeClosed L := by
  exact And.intro E.groupSimple (And.intro E.groupFinite E.classificationCheckClosed)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
