import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.ClathrinCoatAssembly
import HautevilleHouse.CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean.SNAREComplexAssembly

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EndocytosisExocytosisClosurePackage {O : CellBiologyAdmittedObject}
    {V : VesicleBuddingPackage O} {C : ClathrinCoatAssemblyPackage V}
    {S : SNAREComplexAssemblyPackage O} where
  vesicleFormationComplete : Prop
  cargoRelease : Prop
  membraneFusionComplete : Prop
  receptorRecycling : Prop

structure EndocytosisExocytosisClosureEvidence {O : CellBiologyAdmittedObject}
    {V : VesicleBuddingPackage O} {C : ClathrinCoatAssemblyPackage V}
    {S : SNAREComplexAssemblyPackage O} (E : EndocytosisExocytosisClosurePackage V C S) where
  vesicleFormationCompleteClosed : E.vesicleFormationComplete
  cargoReleaseClosed : E.cargoRelease
  membraneFusionCompleteClosed : E.membraneFusionComplete
  receptorRecyclingClosed : E.receptorRecycling

def EndocytosisExocytosisClosureClosed {O : CellBiologyAdmittedObject}
    {V : VesicleBuddingPackage O} {C : ClathrinCoatAssemblyPackage V}
    {S : SNAREComplexAssemblyPackage O} (E : EndocytosisExocytosisClosurePackage V C S) : Prop :=
  E.vesicleFormationComplete ∧ E.cargoRelease ∧ E.membraneFusionComplete ∧ E.receptorRecycling

theorem endocytosis_exocytosis_closure_closed_from_evidence
    {O : CellBiologyAdmittedObject} {V : VesicleBuddingPackage O}
    {C : ClathrinCoatAssemblyPackage V} {S : SNAREComplexAssemblyPackage O}
    (E : EndocytosisExocytosisClosurePackage V C S) (Ev : EndocytosisExocytosisClosureEvidence E) :
    EndocytosisExocytosisClosureClosed E := by
  exact And.intro Ev.vesicleFormationCompleteClosed
    (And.intro Ev.cargoReleaseClosed
      (And.intro Ev.membraneFusionCompleteClosed Ev.receptorRecyclingClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse