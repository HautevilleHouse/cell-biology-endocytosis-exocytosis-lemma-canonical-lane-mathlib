import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure EnergyBalancePackage where
  atpHydrolysis : Prop
  gtpHydrolysis : Prop
  membranePotential : Prop
  ionGradient : Prop
  actinPolymerization : Prop

structure EnergyBalanceEvidence (E : EnergyBalancePackage) where
  atpHydrolysisClosed : E.atpHydrolysis
  gtpHydrolysisClosed : E.gtpHydrolysis
  membranePotentialClosed : E.membranePotential
  ionGradientClosed : E.ionGradient
  actinPolymerizationClosed : E.actinPolymerization

def EnergyBalanceClosed (E : EnergyBalancePackage) : Prop :=
  E.atpHydrolysis ∧ E.gtpHydrolysis ∧ E.membranePotential ∧ E.ionGradient ∧ E.actinPolymerization

theorem energy_balance_closed_from_evidence (E : EnergyBalancePackage) (Ev : EnergyBalanceEvidence E) : EnergyBalanceClosed E := by
  exact And.intro Ev.atpHydrolysisClosed
    (And.intro Ev.gtpHydrolysisClosed
      (And.intro Ev.membranePotentialClosed
        (And.intro Ev.ionGradientClosed Ev.actinPolymerizationClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse