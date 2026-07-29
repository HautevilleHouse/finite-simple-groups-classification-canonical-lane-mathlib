import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSimpleGroupsClassificationCanonicalLaneLean.ClassificationTheorems

/-!
# Aschbacher Classes Package
-/

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure AschbacherClassesPackage {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    {C : CentralizersComponentsPackage S} {T : ThinGroupPackage C} {Q : QuasithinPackage C}
    {E : EvenCharacteristicPackage Q} (Cl : ClassificationClosurePackage E) where
  groupOfLieType : Prop
  alternatingGroup : Prop
  sporadicGroup : Prop
  crossCharacteristicIdentification : Prop

structure AschbacherClassesEvidence {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    {C : CentralizersComponentsPackage S} {T : ThinGroupPackage C} {Q : QuasithinPackage C}
    {E : EvenCharacteristicPackage Q} {Cl : ClassificationClosurePackage E}
    (A : AschbacherClassesPackage Cl) where
  groupOfLieTypeClosed : A.groupOfLieType
  alternatingGroupClosed : A.alternatingGroup
  sporadicGroupClosed : A.sporadicGroup
  crossCharacteristicIdentificationClosed : A.crossCharacteristicIdentification

def AschbacherClassesClosed {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    {C : CentralizersComponentsPackage S} {T : ThinGroupPackage C} {Q : QuasithinPackage C}
    {E : EvenCharacteristicPackage Q} {Cl : ClassificationClosurePackage E}
    (A : AschbacherClassesPackage Cl) : Prop :=
  A.groupOfLieType ∧ A.alternatingGroup ∧ A.sporadicGroup ∧ A.crossCharacteristicIdentification

theorem aschbacher_classes_closed_from_evidence {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    {C : CentralizersComponentsPackage S} {T : ThinGroupPackage C} {Q : QuasithinPackage C}
    {E : EvenCharacteristicPackage Q} {Cl : ClassificationClosurePackage E}
    (A : AschbacherClassesPackage Cl) (Ev : AschbacherClassesEvidence A) :
    AschbacherClassesClosed A := by
  exact And.intro Ev.groupOfLieTypeClosed
    (And.intro Ev.alternatingGroupClosed
      (And.intro Ev.sporadicGroupClosed Ev.crossCharacteristicIdentificationClosed))

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse