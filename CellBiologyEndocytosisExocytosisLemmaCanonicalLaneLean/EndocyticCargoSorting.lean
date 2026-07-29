import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure CargoSortingPackage where
  earlyEndosome : Type u
  endosomalMaturation : Prop
  cargoRecyclingPathway : Prop
  multivesicularBodyFormation : Prop
  lysosomalDegradation : Prop

structure CargoSortingEvidence (C : CargoSortingPackage) where
  earlyEndosomeClosed : C.earlyEndosome
  endosomalMaturationClosed : C.endosomalMaturation
  cargoRecyclingPathwayClosed : C.cargoRecyclingPathway
  multivesicularBodyFormationClosed : C.multivesicularBodyFormation
  lysosomalDegradationClosed : C.lysosomalDegradation

def CargoSortingClosed (C : CargoSortingPackage) : Prop :=
  C.earlyEndosome ∧ C.endosomalMaturation ∧ C.cargoRecyclingPathway ∧ C.multivesicularBodyFormation ∧ C.lysosomalDegradation

theorem cargo_sorting_closed_from_evidence (C : CargoSortingPackage) (E : CargoSortingEvidence C) : CargoSortingClosed C := by
  exact And.intro E.earlyEndosomeClosed (And.intro E.endosomalMaturationClosed (And.intro E.cargoRecyclingPathwayClosed (And.intro E.multivesicularBodyFormationClosed E.lysosomalDegradationClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse