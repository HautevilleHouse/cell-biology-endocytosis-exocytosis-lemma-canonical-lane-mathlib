import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleCargoSortingPackage where
  cargoRecognitionDomains : Prop
  adaptorProteinSelection : Prop
  clathrinCoatedPitMaturation : Prop
  cargoConcentration : Prop
  vesicleBuddingCompletion : Prop

structure VesicleCargoSortingEvidence (V : VesicleCargoSortingPackage) where
  cargoRecognitionDomainsClosed : V.cargoRecognitionDomains
  adaptorProteinSelectionClosed : V.adaptorProteinSelection
  clathrinCoatedPitMaturationClosed : V.clathrinCoatedPitMaturation
  cargoConcentrationClosed : V.cargoConcentration
  vesicleBuddingCompletionClosed : V.vesicleBuddingCompletion

def VesicleCargoSortingClosed (V : VesicleCargoSortingPackage) : Prop :=
  V.cargoRecognitionDomains ∧ V.adaptorProteinSelection ∧ V.clathrinCoatedPitMaturation ∧ V.cargoConcentration ∧ V.vesicleBuddingCompletion

theorem vesicle_cargo_sorting_closed_from_evidence
    (V : VesicleCargoSortingPackage)
    (E : VesicleCargoSortingEvidence V) :
    VesicleCargoSortingClosed V := by
  exact And.intro E.cargoRecognitionDomainsClosed
    (And.intro E.adaptorProteinSelectionClosed
      (And.intro E.clathrinCoatedPitMaturationClosed
        (And.intro E.cargoConcentrationClosed E.vesicleBuddingCompletionClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse