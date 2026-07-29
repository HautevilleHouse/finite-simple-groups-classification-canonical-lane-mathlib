import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSimpleGroupsClassificationCanonicalLaneLean.CentralizersComponents

/-!
# Centralizers and Component Structure Package
-/

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure CentralizersComponentsPackage {G : SimpleGroupPackage} (S : SimpleGroupEvidence G) where
  centralizerOfInvolution : Type u
  componentClassification : Prop
  centralizerStructureIdentified : Prop
  signalizerFunctor : Prop

structure CentralizersComponentsEvidence {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    (C : CentralizersComponentsPackage S) where
  componentClassificationClosed : C.componentClassification
  centralizerStructureIdentifiedClosed : C.centralizerStructureIdentified
  signalizerFunctorClosed : C.signalizerFunctor

def CentralizersComponentsClosed {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    (C : CentralizersComponentsPackage S) : Prop :=
  C.componentClassification ∧ C.centralizerStructureIdentified ∧ C.signalizerFunctor

theorem centralizers_components_closed_from_evidence {G : SimpleGroupPackage} {S : SimpleGroupEvidence G}
    (C : CentralizersComponentsPackage S) (E : CentralizersComponentsEvidence C) :
    CentralizersComponentsClosed C := by
  exact And.intro E.componentClassificationClosed
    (And.intro E.centralizerStructureIdentifiedClosed E.signalizerFunctorClosed)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse