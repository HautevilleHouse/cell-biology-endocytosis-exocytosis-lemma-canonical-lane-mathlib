import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleBuddingPackage (O : CellBiologyAdmittedObject) where
  coatProteinRecruitment : Prop
  membraneCurvatureGeneration : Prop
  vesicleScission : Prop
  cargoSelection : Prop

structure VesicleBuddingEvidence {O : CellBiologyAdmittedObject} (V : VesicleBuddingPackage O) where
  coatProteinRecruitmentClosed : V.coatProteinRecruitment
  membraneCurvatureGenerationClosed : V.membraneCurvatureGeneration
  vesicleScissionClosed : V.vesicleScission
  cargoSelectionClosed : V.cargoSelection

def VesicleBuddingClosed {O : CellBiologyAdmittedObject} (V : VesicleBuddingPackage O) : Prop :=
  V.coatProteinRecruitment ∧ V.membraneCurvatureGeneration ∧ V.vesicleScission ∧ V.cargoSelection

theorem vesicle_budding_closed_from_evidence
    {O : CellBiologyAdmittedObject} (V : VesicleBuddingPackage O) (E : VesicleBuddingEvidence V) :
    VesicleBuddingClosed V := by
  exact And.intro E.coatProteinRecruitmentClosed
    (And.intro E.membraneCurvatureGenerationClosed
      (And.intro E.vesicleScissionClosed E.cargoSelectionClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse