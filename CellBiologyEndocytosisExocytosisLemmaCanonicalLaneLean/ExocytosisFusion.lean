import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure ExocytosisFusionPackage where
  snareComplexAssembly : Prop
  calciumTrigger : Prop
  vesicleDocking : Prop
  membraneFusion : Prop
  contentRelease : Prop

structure ExocytosisFusionEvidence (F : ExocytosisFusionPackage) where
  snareComplexAssemblyClosed : F.snareComplexAssembly
  calciumTriggerClosed : F.calciumTrigger
  vesicleDockingClosed : F.vesicleDocking
  membraneFusionClosed : F.membraneFusion
  contentReleaseClosed : F.contentRelease

def ExocytosisFusionClosed (F : ExocytosisFusionPackage) : Prop :=
  F.snareComplexAssembly ∧ F.calciumTrigger ∧ F.vesicleDocking ∧ F.membraneFusion ∧ F.contentRelease

theorem exocytosis_fusion_closed_from_evidence
    (F : ExocytosisFusionPackage) (Ev : ExocytosisFusionEvidence F) :
    ExocytosisFusionClosed F := by
  exact And.intro Ev.snareComplexAssemblyClosed
    (And.intro Ev.calciumTriggerClosed
      (And.intro Ev.vesicleDockingClosed
        (And.intro Ev.membraneFusionClosed Ev.contentReleaseClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse