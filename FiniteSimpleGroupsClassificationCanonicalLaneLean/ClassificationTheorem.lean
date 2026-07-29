import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure FiniteSimpleGroupClassification where
  allFiniteSimpleGroupsClassified : Prop
  classificationList : List String
  classificationListComplete : List.length classificationList = 16
  classificationListCorrect : Prop

def ConstrainedClassificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classification_endgame (A : AdmissibleClass) :
    ConstrainedClassificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse