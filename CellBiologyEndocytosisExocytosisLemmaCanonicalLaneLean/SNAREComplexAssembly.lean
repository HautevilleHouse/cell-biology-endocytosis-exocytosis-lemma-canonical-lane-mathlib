import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure SNAREComplexAssemblyPackage (O : CellBiologyAdmittedObject) where
  vSNAREDocking : Prop
  tSNAREBinding : Prop
  coilCoilFormation : Prop
  membraneBridging : Prop

structure SNAREComplexAssemblyEvidence {O : CellBiologyAdmittedObject}
    (S : SNAREComplexAssemblyPackage O) where
  vSNAREDockingClosed : S.vSNAREDocking
  tSNAREBindingClosed : S.tSNAREBinding
  coilCoilFormationClosed : S.coilCoilFormation
  membraneBridgingClosed : S.membraneBridging

def SNAREComplexAssemblyClosed {O : CellBiologyAdmittedObject}
    (S : SNAREComplexAssemblyPackage O) : Prop :=
  S.vSNAREDocking ∧ S.tSNAREBinding ∧ S.coilCoilFormation ∧ S.membraneBridging

theorem snare_complex_assembly_closed_from_evidence
    {O : CellBiologyAdmittedObject} (S : SNAREComplexAssemblyPackage O)
    (E : SNAREComplexAssemblyEvidence S) : SNAREComplexAssemblyClosed S := by
  exact And.intro E.vSNAREDockingClosed
    (And.intro E.tSNAREBindingClosed
      (And.intro E.coilCoilFormationClosed E.membraneBridgingClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse