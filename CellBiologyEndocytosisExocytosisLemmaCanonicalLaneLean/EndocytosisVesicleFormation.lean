import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EndocytosisVesicleFormationPackage where
  membraneComposition : Prop
  coatProteinRecruitment : Prop
  membraneInvagination : Prop
  vesicleScission : Prop
  cargoLoading : Prop

structure EndocytosisVesicleFormationEvidence (E : EndocytosisVesicleFormationPackage) where
  membraneCompositionClosed : E.membraneComposition
  coatProteinRecruitmentClosed : E.coatProteinRecruitment
  membraneInvaginationClosed : E.membraneInvagination
  vesicleScissionClosed : E.vesicleScission
  cargoLoadingClosed : E.cargoLoading

def EndocytosisVesicleFormationClosed (E : EndocytosisVesicleFormationPackage) : Prop :=
  E.membraneComposition ∧ E.coatProteinRecruitment ∧ E.membraneInvagination ∧ E.vesicleScission ∧ E.cargoLoading

theorem endocytosis_vesicle_formation_closed_from_evidence
    (E : EndocytosisVesicleFormationPackage)
    (Ev : EndocytosisVesicleFormationEvidence E) :
    EndocytosisVesicleFormationClosed E := by
  exact And.intro Ev.membraneCompositionClosed
    (And.intro Ev.coatProteinRecruitmentClosed
      (And.intro Ev.membraneInvaginationClosed
        (And.intro Ev.vesicleScissionClosed Ev.cargoLoadingClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse