import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EndocytosisDynamicsPackage where
  clathrinMediated : Prop
  caveolaeMediated : Prop
  pinocytosis : Prop
  phagocytosis : Prop
  dynaminDependence : Prop
  cargoUptake : Prop

structure EndocytosisDynamicsEvidence (E : EndocytosisDynamicsPackage) where
  clathrinMediatedClosed : E.clathrinMediated
  caveolaeMediatedClosed : E.caveolaeMediated
  pinocytosisClosed : E.pinocytosis
  phagocytosisClosed : E.phagocytosis
  dynaminDependenceClosed : E.dynaminDependence
  cargoUptakeClosed : E.cargoUptake

def EndocytosisDynamicsClosed (E : EndocytosisDynamicsPackage) : Prop :=
  E.clathrinMediated ∧ E.caveolaeMediated ∧ E.pinocytosis ∧ E.phagocytosis ∧ E.dynaminDependence ∧ E.cargoUptake

theorem endocytosis_dynamics_closed_from_evidence
    (E : EndocytosisDynamicsPackage) (Ev : EndocytosisDynamicsEvidence E) :
    EndocytosisDynamicsClosed E := by
  exact And.intro Ev.clathrinMediatedClosed
    (And.intro Ev.caveolaeMediatedClosed
      (And.intro Ev.pinocytosisClosed
        (And.intro Ev.phagocytosisClosed
          (And.intro Ev.dynaminDependenceClosed Ev.cargoUptakeClosed))))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse