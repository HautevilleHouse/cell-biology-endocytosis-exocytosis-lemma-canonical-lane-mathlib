import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembraneTraffickingClosed A.object ∧ EndocytosisPathwayClosed A.object ∧
  ExocytosisSecretionClosed A.object ∧ VesicleRecyclingClosed A.object ∧
  SignalingRegulationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse