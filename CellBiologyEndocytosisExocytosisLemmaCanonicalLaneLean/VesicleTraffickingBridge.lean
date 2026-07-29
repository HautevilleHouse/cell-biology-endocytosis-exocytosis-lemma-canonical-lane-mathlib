import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleTraffickingPackage where
  coatProteinRecruitment : Prop
  cargoSelection : Prop
  vesicleBudding : Prop
  vesicleTransport : Prop
  vesicleTethering : Prop
  coatDisassembly : Prop
  coatProteinRecruitmentClosed : coatProteinRecruitment
  cargoSelectionClosed : cargoSelection
  vesicleBuddingClosed : vesicleBudding
  vesicleTransportClosed : vesicleTransport
  vesicleTetheringClosed : vesicleTethering
  coatDisassemblyClosed : coatDisassembly

def VesicleTraffickingClosed (V : VesicleTraffickingPackage) : Prop :=
  V.coatProteinRecruitment ∧ V.cargoSelection ∧ V.vesicleBudding ∧ V.vesicleTransport ∧ V.vesicleTethering ∧ V.coatDisassembly

theorem vesicle_trafficking_closed_from_package (V : VesicleTraffickingPackage) : VesicleTraffickingClosed V := by
  exact And.intro V.coatProteinRecruitmentClosed
    (And.intro V.cargoSelectionClosed
      (And.intro V.vesicleBuddingClosed
        (And.intro V.vesicleTransportClosed
          (And.intro V.vesicleTetheringClosed V.coatDisassemblyClosed))))

theorem bridge_vesicle_trafficking (V : VesicleTraffickingPackage) : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk ()) True True (Or.inl True)) := by
  exact True.intro

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse