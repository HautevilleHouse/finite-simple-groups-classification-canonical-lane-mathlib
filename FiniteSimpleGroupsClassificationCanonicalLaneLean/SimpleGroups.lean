import canonicalLaneMathlib.AdmissibleClass

/-!
# Simple Groups Definition Package
-/

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure SimpleGroupPackage where
  carrier : Type u
  groupStructure : Group carrier
  normalSubgroupsTrivial : Prop
  nonabelian : Prop
  identityProscribed : Prop

structure SimpleGroupEvidence (G : SimpleGroupPackage) where
  normalSubgroupsTrivialClosed : G.normalSubgroupsTrivial
  nonabelianClosed : G.nonabelian
  identityProscribedClosed : G.identityProscribed

def SimpleGroupClosed (G : SimpleGroupPackage) : Prop :=
  G.normalSubgroupsTrivial ∧ G.nonabelian ∧ G.identityProscribed

theorem simple_group_closed_from_evidence (G : SimpleGroupPackage) (E : SimpleGroupEvidence G) :
    SimpleGroupClosed G := by
  exact And.intro E.normalSubgroupsTrivialClosed
    (And.intro E.nonabelianClosed E.identityProscribedClosed)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse