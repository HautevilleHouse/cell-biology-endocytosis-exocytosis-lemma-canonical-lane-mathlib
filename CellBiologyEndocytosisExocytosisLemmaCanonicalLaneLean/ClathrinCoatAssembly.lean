import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.VesicleBuddingPackage

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure ClathrinCoatAssemblyPackage {O : CellBiologyAdmittedObject}
    (V : VesicleBuddingPackage O) where
  clathrinTrimerization : Prop
  adaptorBinding : Prop
  cageFormation : Prop
  coatedPitMaturation : Prop

structure ClathrinCoatAssemblyEvidence {O : CellBiologyAdmittedObject}
    {V : VesicleBuddingPackage O} (C : ClathrinCoatAssemblyPackage V) where
  clathrinTrimerizationClosed : C.clathrinTrimerization
  adaptorBindingClosed : C.adaptorBinding
  cageFormationClosed : C.cageFormation
  coatedPitMaturationClosed : C.coatedPitMaturation

def ClathrinCoatAssemblyClosed {O : CellBiologyAdmittedObject}
    {V : VesicleBuddingPackage O} (C : ClathrinCoatAssemblyPackage V) : Prop :=
  C.clathrinTrimerization ∧ C.adaptorBinding ∧ C.cageFormation ∧ C.coatedPitMaturation

theorem clathrin_coat_assembly_closed_from_evidence
    {O : CellBiologyAdmittedObject} {V : VesicleBuddingPackage O}
    (C : ClathrinCoatAssemblyPackage V) (E : ClathrinCoatAssemblyEvidence C) :
    ClathrinCoatAssemblyClosed C := by
  exact And.intro E.clathrinTrimerizationClosed
    (And.intro E.adaptorBindingClosed
      (And.intro E.cageFormationClosed E.coatedPitMaturationClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse