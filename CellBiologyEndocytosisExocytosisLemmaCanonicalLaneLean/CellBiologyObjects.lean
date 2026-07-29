import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EndocytosisCell where
  carrier : Type
  membrane : TopologicalSpace carrier
  membraneReceptors : Set carrier
  cargo : Set carrier

structure ExocytosisVesicle where
  carrier : Type
  membrane : TopologicalSpace carrier
  cargo : Set carrier
  fusionCompetent : Prop

structure EndocytosisExocytosisObject where
  cell : EndocytosisCell
  vesicle : ExocytosisVesicle
  endocytosisActive : Prop
  exocytosisActive : Prop
  cycleBalanced : Bool
  conclusion : endocytosisActive ∨ exocytosisActive

structure EndocytosisExocytosisState where
  object : EndocytosisExocytosisObject

def EndocytosisExocytosisWitnessClosed (O : EndocytosisExocytosisObject) : Prop :=
  O.endocytosisActive ∨ O.exocytosisActive

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse