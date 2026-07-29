import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure FiniteGroupFamily where
  familyName : String
  parameterType : Type u
  parameterCondition : parameterType → Prop
  constructedGroup : parameterType → Type v
  simpleGroupProperty : ∀ (p : parameterType), parameterCondition p → SimpleGroup (constructedGroup p)

structure CyclicFamily (p : ℕ) where
  primeCondition : Nat.Prime p
  group : SimpleGroup (ZMod p)

structure AlternatingFamily (n : ℕ) where
  nGeqFive : n ≥ 5
  group : SimpleGroup (AlternatingGroup n)

structure LieTypeFamily (type : String) (q : ℕ) where
  primePower : ∃ (p : ℕ) (k : ℕ), Nat.Prime p ∧ q = p ^ k
  group : SimpleGroup (LieTypeGroup type q)

structure SporadicFamily where
  sporadicName : String
  order : ℕ
  group : SimpleGroup

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse