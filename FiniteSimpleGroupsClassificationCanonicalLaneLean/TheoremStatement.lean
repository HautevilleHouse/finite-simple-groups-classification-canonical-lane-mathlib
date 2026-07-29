import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSimpleGroupsClassificationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  groupClassificationStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "finite-simple-groups-classification-canonical-lane"
    theoremName := "finite-simple-groups-classification-canonical-lane"
    theoremObject := "Classification of finite simple groups"
    classicalBoundary := "unrestricted classical closure remains carried"
    groupClassificationStatement := "Every finite simple group is cyclic, alternating, Lie-type, or sporadic"
    certificateLane := "group_classification_constrained"
    carriedRemainder := "Full classification proof details remain outside this generated layer"
  }

end FiniteSimpleGroupsClassificationCanonicalLaneLean
end HautevilleHouse