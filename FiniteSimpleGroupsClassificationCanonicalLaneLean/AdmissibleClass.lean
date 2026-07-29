import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure AdmissibleClass where
  object : FiniteSimpleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FiniteSimpleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
