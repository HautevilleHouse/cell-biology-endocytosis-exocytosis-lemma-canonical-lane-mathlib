import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure VesicleFusionPackage where
  snareComplexAssembly : Prop
  vesicleDocking : Prop
  membraneFusionPore : Prop
  calciumTriggeredFusion : Prop
  vesicleRecycling : Prop

structure VesicleFusionEvidence (F : VesicleFusionPackage) where
  snareComplexAssemblyClosed : F.snareComplexAssembly
  vesicleDockingClosed : F.vesicleDocking
  membraneFusionPoreClosed : F.membraneFusionPore
  calciumTriggeredFusionClosed : F.calciumTriggeredFusion
  vesicleRecyclingClosed : F.vesicleRecycling

def VesicleFusionClosed (F : VesicleFusionPackage) : Prop :=
  F.snareComplexAssembly ∧ F.vesicleDocking ∧ F.membraneFusionPore ∧ F.calciumTriggeredFusion ∧ F.vesicleRecycling

theorem vesicle_fusion_closed_from_evidence (F : VesicleFusionPackage) (E : VesicleFusionEvidence F) : VesicleFusionClosed F := by
  exact And.intro E.snareComplexAssemblyClosed (And.intro E.vesicleDockingClosed (And.intro E.membraneFusionPoreClosed (And.intro E.calciumTriggeredFusionClosed E.vesicleRecyclingClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse