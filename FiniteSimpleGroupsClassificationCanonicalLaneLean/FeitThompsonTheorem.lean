import FiniteSimpleGroupsClassificationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure FeitThompsonPackage where
  oddOrder : Prop
  solvability : Prop
  minimalCounterexample : Prop
  characterTheory : Prop
  contradictionProved : Prop

structure FeitThompsonEvidence (F : FeitThompsonPackage) where
  oddOrderClosed : F.oddOrder
  solvabilityClosed : F.solvability
  minimalCounterexampleClosed : F.minimalCounterexample
  characterTheoryClosed : F.characterTheory
  contradictionProvedClosed : F.contradictionProved

def FeitThompsonClosed (F : FeitThompsonPackage) : Prop :=
  F.oddOrder ∧ F.solvability ∧ F.minimalCounterexample ∧
  F.characterTheory ∧ F.contradictionProved

theorem feit_thompson_closed_from_evidence (F : FeitThompsonPackage)
    (E : FeitThompsonEvidence F) : FeitThompsonClosed F := by
  exact And.intro E.oddOrderClosed
    (And.intro E.solvabilityClosed
      (And.intro E.minimalCounterexampleClosed
        (And.intro E.characterTheoryClosed E.contradictionProvedClosed)))

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
