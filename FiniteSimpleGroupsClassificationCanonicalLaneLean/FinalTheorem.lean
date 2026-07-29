import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSimpleGroupsClassificationCanonicalLaneLean.AschbacherClasses

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

def ConstrainedSimpleClassificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_simple_classification_endgame (A : AdmissibleClass) :
    ConstrainedSimpleClassificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse