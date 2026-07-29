import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure ExocytosisVesicleDockingPackage where
  vesicleTransportToMembrane : Prop
  tetheringComplexAssembly : Prop
  snareComplexFormation : Prop
  membraneFusionPoreOpening : Prop
  neurotransmitterRelease : Prop

structure ExocytosisVesicleDockingEvidence (Ex : ExocytosisVesicleDockingPackage) where
  vesicleTransportToMembraneClosed : Ex.vesicleTransportToMembrane
  tetheringComplexAssemblyClosed : Ex.tetheringComplexAssembly
  snareComplexFormationClosed : Ex.snareComplexFormation
  membraneFusionPoreOpeningClosed : Ex.membraneFusionPoreOpening
  neurotransmitterReleaseClosed : Ex.neurotransmitterRelease

def ExocytosisVesicleDockingClosed (Ex : ExocytosisVesicleDockingPackage) : Prop :=
  Ex.vesicleTransportToMembrane ∧ Ex.tetheringComplexAssembly ∧ Ex.snareComplexFormation ∧ Ex.membraneFusionPoreOpening ∧ Ex.neurotransmitterRelease

theorem exocytosis_vesicle_docking_closed_from_evidence
    (Ex : ExocytosisVesicleDockingPackage)
    (E : ExocytosisVesicleDockingEvidence Ex) :
    ExocytosisVesicleDockingClosed Ex := by
  exact And.intro E.vesicleTransportToMembraneClosed
    (And.intro E.tetheringComplexAssemblyClosed
      (And.intro E.snareComplexFormationClosed
        (And.intro E.membraneFusionPoreOpeningClosed E.neurotransmitterReleaseClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse