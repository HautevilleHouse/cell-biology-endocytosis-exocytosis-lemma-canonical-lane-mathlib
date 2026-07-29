import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EndocytosisPathwayPackage where
  clathrinMediated : Prop
  caveolaeDependent : Prop
  macropinocytosis : Prop
  phagocytosis : Prop

structure EndocytosisPathwayEvidence (E : EndocytosisPathwayPackage) where
  clathrinMediatedClosed : E.clathrinMediated
  caveolaeDependentClosed : E.caveolaeDependent
  macropinocytosisClosed : E.macropinocytosis
  phagocytosisClosed : E.phagocytosis

def EndocytosisPathwayClosed (E : EndocytosisPathwayPackage) : Prop :=
  E.clathrinMediated ∧ E.caveolaeDependent ∧ E.macropinocytosis ∧ E.phagocytosis

theorem endocytosis_pathway_closed_from_evidence
    (E : EndocytosisPathwayPackage) (Ev : EndocytosisPathwayEvidence E) :
    EndocytosisPathwayClosed E := by
  exact And.intro Ev.clathrinMediatedClosed
    (And.intro Ev.caveolaeDependentClosed
      (And.intro Ev.macropinocytosisClosed Ev.phagocytosisClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse