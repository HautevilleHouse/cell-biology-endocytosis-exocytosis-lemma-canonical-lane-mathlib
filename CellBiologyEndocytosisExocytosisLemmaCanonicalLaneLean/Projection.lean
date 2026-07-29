import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cellBiologyProjection : Projection EndocytosisExocytosisState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cell_biology_projection_idempotent (x : EndocytosisExocytosisState) :
    cellBiologyProjection.toFun (cellBiologyProjection.toFun x) = cellBiologyProjection.toFun x := by
  exact cellBiologyProjection.idempotent x

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse