import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure MembraneTraffickingRegulationPackage where
  rabGtpaseCycling : Prop
  phosphoinositideSignaling : Prop
  actinCytoskeletonRemodeling : Prop
  calciumDependentFusion : Prop
  clathrinUncoating : Prop

structure MembraneTraffickingRegulationEvidence (M : MembraneTraffickingRegulationPackage) where
  rabGtpaseCyclingClosed : M.rabGtpaseCycling
  phosphoinositideSignalingClosed : M.phosphoinositideSignaling
  actinCytoskeletonRemodelingClosed : M.actinCytoskeletonRemodeling
  calciumDependentFusionClosed : M.calciumDependentFusion
  clathrinUncoatingClosed : M.clathrinUncoating

def MembraneTraffickingRegulationClosed (M : MembraneTraffickingRegulationPackage) : Prop :=
  M.rabGtpaseCycling ∧ M.phosphoinositideSignaling ∧ M.actinCytoskeletonRemodeling ∧ M.calciumDependentFusion ∧ M.clathrinUncoating

theorem membrane_trafficking_regulation_closed_from_evidence
    (M : MembraneTraffickingRegulationPackage)
    (E : MembraneTraffickingRegulationEvidence M) :
    MembraneTraffickingRegulationClosed M := by
  exact And.intro E.rabGtpaseCyclingClosed
    (And.intro E.phosphoinositideSignalingClosed
      (And.intro E.actinCytoskeletonRemodelingClosed
        (And.intro E.calciumDependentFusionClosed E.clathrinUncoatingClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse