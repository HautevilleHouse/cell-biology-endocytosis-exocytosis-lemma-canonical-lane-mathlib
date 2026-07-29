import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure ExocytosisSecretionPackage where
  constitutiveSecretion : Prop
  regulatedSecretion : Prop
  vesicleDocking : Prop
  exocyticFusion : Prop

structure ExocytosisSecretionEvidence (E : ExocytosisSecretionPackage) where
  constitutiveSecretionClosed : E.constitutiveSecretion
  regulatedSecretionClosed : E.regulatedSecretion
  vesicleDockingClosed : E.vesicleDocking
  exocyticFusionClosed : E.exocyticFusion

def ExocytosisSecretionClosed (E : ExocytosisSecretionPackage) : Prop :=
  E.constitutiveSecretion ∧ E.regulatedSecretion ∧ E.vesicleDocking ∧ E.exocyticFusion

theorem exocytosis_secretion_closed_from_evidence
    (E : ExocytosisSecretionPackage) (Ev : ExocytosisSecretionEvidence E) :
    ExocytosisSecretionClosed E := by
  exact And.intro Ev.constitutiveSecretionClosed
    (And.intro Ev.regulatedSecretionClosed
      (And.intro Ev.vesicleDockingClosed Ev.exocyticFusionClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse