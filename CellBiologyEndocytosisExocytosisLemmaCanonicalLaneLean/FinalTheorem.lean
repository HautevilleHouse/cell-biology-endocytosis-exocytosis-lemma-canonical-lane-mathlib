import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

def CellBiologyEndocytosisExocytosisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_biology_endocytosis_exocytosis_endgame (A : AdmissibleClass) :
    CellBiologyEndocytosisExocytosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse