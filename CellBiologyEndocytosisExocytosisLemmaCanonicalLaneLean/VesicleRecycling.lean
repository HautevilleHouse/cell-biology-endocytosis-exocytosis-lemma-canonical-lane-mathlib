import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleRecyclingPackage where
  endosomalSorting : Prop
  recyclingEndosome : Prop
  retrogradeTransport : Prop
  lysosomalDegradation : Prop

structure VesicleRecyclingEvidence (V : VesicleRecyclingPackage) where
  endosomalSortingClosed : V.endosomalSorting
  recyclingEndosomeClosed : V.recyclingEndosome
  retrogradeTransportClosed : V.retrogradeTransport
  lysosomalDegradationClosed : V.lysosomalDegradation

def VesicleRecyclingClosed (V : VesicleRecyclingPackage) : Prop :=
  V.endosomalSorting ∧ V.recyclingEndosome ∧ V.retrogradeTransport ∧ V.lysosomalDegradation

theorem vesicle_recycling_closed_from_evidence
    (V : VesicleRecyclingPackage) (Ev : VesicleRecyclingEvidence V) :
    VesicleRecyclingClosed V := by
  exact And.intro Ev.endosomalSortingClosed
    (And.intro Ev.recyclingEndosomeClosed
      (And.intro Ev.retrogradeTransportClosed Ev.lysosomalDegradationClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse