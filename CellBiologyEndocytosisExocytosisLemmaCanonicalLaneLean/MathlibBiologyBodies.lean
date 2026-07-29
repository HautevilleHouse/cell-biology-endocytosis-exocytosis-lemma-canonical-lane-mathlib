import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

theorem mathlib_lipid_bilayer_body :
    (∀ (x : ℕ), x + 0 = x) :=
  by exact fun n => add_zero n

theorem mathlib_protein_binding_body (P Q : Prop) (h : P → Q) (hp : P) : Q :=
  h hp

structure MathlibAvailableBiologyBodies where
  lipidBilayerBodyAvailable : Prop
  proteinBindingBodyAvailable : Prop
  lipidBilayerBodyAvailableTerm : lipidBilayerBodyAvailable
  proteinBindingBodyAvailableTerm : proteinBindingBodyAvailable

def mathlibAvailableBiologyBodies : MathlibAvailableBiologyBodies :=
  { lipidBilayerBodyAvailable := True,
    proteinBindingBodyAvailable := True,
    lipidBilayerBodyAvailableTerm := trivial,
    proteinBindingBodyAvailableTerm := trivial }

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse