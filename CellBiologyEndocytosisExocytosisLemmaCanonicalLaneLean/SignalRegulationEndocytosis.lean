import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure SignalRegulationPackage where
  receptorInternalization : Prop
  ligandInducedEndocytosis : Prop
  signalingEndosome : Prop
  mapkErkPathwayModulation : Prop
  receptorRecycling : Prop

structure SignalRegulationEvidence (S : SignalRegulationPackage) where
  receptorInternalizationClosed : S.receptorInternalization
  ligandInducedEndocytosisClosed : S.ligandInducedEndocytosis
  signalingEndosomeClosed : S.signalingEndosome
  mapkErkPathwayModulationClosed : S.mapkErkPathwayModulation
  receptorRecyclingClosed : S.receptorRecycling

def SignalRegulationClosed (S : SignalRegulationPackage) : Prop :=
  S.receptorInternalization ∧ S.ligandInducedEndocytosis ∧ S.signalingEndosome ∧ S.mapkErkPathwayModulation ∧ S.receptorRecycling

theorem signal_regulation_closed_from_evidence (S : SignalRegulationPackage) (E : SignalRegulationEvidence S) : SignalRegulationClosed S := by
  exact And.intro E.receptorInternalizationClosed (And.intro E.ligandInducedEndocytosisClosed (And.intro E.signalingEndosomeClosed (And.intro E.mapkErkPathwayModulationClosed E.receptorRecyclingClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse