import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure LieTypeGroupEvidence where
  chevalleyGroupsClassified : Prop
  steinbergGroupsClassified : Prop
  twistedGroupsClassified : Prop
  exceptionalGroupsClassified : Prop
  allLieTypeClassified : chevalleyGroupsClassified ∧ steinbergGroupsClassified ∧ twistedGroupsClassified ∧ exceptionalGroupsClassified

def LieTypeGroupClosed (E : LieTypeGroupEvidence) : Prop :=
  E.allLieTypeClassified

theorem lie_type_group_closed_from_evidence (E : LieTypeGroupEvidence) :
    LieTypeGroupClosed E := by
  exact E.allLieTypeClassified

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
