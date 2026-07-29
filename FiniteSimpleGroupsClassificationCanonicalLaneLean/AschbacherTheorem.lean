import FiniteSimpleGroupsClassificationCanonicalLaneLean.ClassificationTheorem

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure AschbacherPackage {F : FeitThompsonPackage}
    (C : ClassificationPackage F) where
  componentTheorem : Prop
  quasinormalResidue : Prop
  standardComponent : Prop
  thinGroupClassification : Prop
  transferTheorem : Prop

structure AschbacherEvidence {F : FeitThompsonPackage}
    {C : ClassificationPackage F}
    (A : AschbacherPackage C) where
  componentTheoremClosed : A.componentTheorem
  quasinormalResidueClosed : A.quasinormalResidue
  standardComponentClosed : A.standardComponent
  thinGroupClassificationClosed : A.thinGroupClassification
  transferTheoremClosed : A.transferTheorem

def AschbacherClosed {F : FeitThompsonPackage}
    {C : ClassificationPackage F}
    (A : AschbacherPackage C) : Prop :=
  A.componentTheorem ∧ A.quasinormalResidue ∧
  A.standardComponent ∧ A.thinGroupClassification ∧ A.transferTheorem

theorem aschbacher_closed_from_evidence {F : FeitThompsonPackage}
    {C : ClassificationPackage F} (A : AschbacherPackage C)
    (E : AschbacherEvidence A) : AschbacherClosed A := by
  exact And.intro E.componentTheoremClosed
    (And.intro E.quasinormalResidueClosed
      (And.intro E.standardComponentClosed
        (And.intro E.thinGroupClassificationClosed E.transferTheoremClosed)))

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
