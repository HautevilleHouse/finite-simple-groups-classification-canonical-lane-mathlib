import FiniteSimpleGroupsClassificationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FiniteSimpleAdmittedObject where
  group : Type
  groupMul : Group group
  finiteSimple : Prop
  classificationListed : Prop
  conclusion : classificationListed

structure FiniteSimpleEndgameState where
  object : FiniteSimpleAdmittedObject

def FiniteSimpleWitnessClosed (O : FiniteSimpleAdmittedObject) : Prop :=
  O.classificationListed

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse
