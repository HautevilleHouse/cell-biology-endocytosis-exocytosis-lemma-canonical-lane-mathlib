import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure MembraneTraffickingPackage where
  vesicleFormation : Prop
  cargoLoading : Prop
  membraneFusion : Prop
  regulatorySignals : Prop

structure MembraneTraffickingEvidence (M : MembraneTraffickingPackage) where
  vesicleFormationClosed : M.vesicleFormation
  cargoLoadingClosed : M.cargoLoading
  membraneFusionClosed : M.membraneFusion
  regulatorySignalsClosed : M.regulatorySignals

def MembraneTraffickingClosed (M : MembraneTraffickingPackage) : Prop :=
  M.vesicleFormation ∧ M.cargoLoading ∧ M.membraneFusion ∧ M.regulatorySignals

theorem membrane_trafficking_closed_from_evidence
    (M : MembraneTraffickingPackage) (E : MembraneTraffickingEvidence M) :
    MembraneTraffickingClosed M := by
  exact And.intro E.vesicleFormationClosed
    (And.intro E.cargoLoadingClosed
      (And.intro E.membraneFusionClosed E.regulatorySignalsClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse