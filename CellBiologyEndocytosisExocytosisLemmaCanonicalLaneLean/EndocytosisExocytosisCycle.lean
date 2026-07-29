import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EndocytosisExocytosisCyclePackage {Edyn : EndocytosisDynamicsPackage} {Efus : ExocytosisFusionPackage} where
  membraneTrafficBalance : Prop
  receptorRecycling : Prop
  endocyticExocyticCoupling : Prop
  trancytosis : Prop
  conclusion : membraneTrafficBalance

structure EndocytosisExocytosisCycleEvidence {Edyn : EndocytosisDynamicsPackage} {Efus : ExocytosisFusionPackage}
    (C : EndocytosisExocytosisCyclePackage Edyn Efus) where
  membraneTrafficBalanceClosed : C.membraneTrafficBalance
  receptorRecyclingClosed : C.receptorRecycling
  endocyticExocyticCouplingClosed : C.endocyticExocyticCoupling
  trancytosisClosed : C.trancytosis

def EndocytosisExocytosisCycleClosed {Edyn : EndocytosisDynamicsPackage} {Efus : ExocytosisFusionPackage}
    (C : EndocytosisExocytosisCyclePackage Edyn Efus) : Prop :=
  C.membraneTrafficBalance ∧ C.receptorRecycling ∧ C.endocyticExocyticCoupling ∧ C.trancytosis

theorem endocytosis_exocytosis_cycle_closed_from_evidence
    {Edyn : EndocytosisDynamicsPackage} {Efus : ExocytosisFusionPackage}
    (C : EndocytosisExocytosisCyclePackage Edyn Efus) (Ev : EndocytosisExocytosisCycleEvidence C) :
    EndocytosisExocytosisCycleClosed C := by
  exact And.intro Ev.membraneTrafficBalanceClosed
    (And.intro Ev.receptorRecyclingClosed
      (And.intro Ev.endocyticExocyticCouplingClosed Ev.trancytosisClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse