import FiniteSimpleGroupsClassificationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
