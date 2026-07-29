import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleFormationPackage where
  membraneCurvatureSensing : Prop
  coatProteinRecruitment : Prop
  cargoSelection : Prop
  membraneScission : Prop
  vesicleRelease : Prop

structure VesicleFormationEvidence (V : VesicleFormationPackage) where
  membraneCurvatureSensingClosed : V.membraneCurvatureSensing
  coatProteinRecruitmentClosed : V.coatProteinRecruitment
  cargoSelectionClosed : V.cargoSelection
  membraneScissionClosed : V.membraneScission
  vesicleReleaseClosed : V.vesicleRelease

def VesicleFormationClosed (V : VesicleFormationPackage) : Prop :=
  V.membraneCurvatureSensing ∧ V.coatProteinRecruitment ∧ V.cargoSelection ∧ V.membraneScission ∧ V.vesicleRelease

theorem vesicle_formation_closed_from_evidence (V : VesicleFormationPackage) (E : VesicleFormationEvidence V) : VesicleFormationClosed V := by
  exact And.intro E.membraneCurvatureSensingClosed
    (And.intro E.coatProteinRecruitmentClosed
      (And.intro E.cargoSelectionClosed
        (And.intro E.membraneScissionClosed E.vesicleReleaseClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse