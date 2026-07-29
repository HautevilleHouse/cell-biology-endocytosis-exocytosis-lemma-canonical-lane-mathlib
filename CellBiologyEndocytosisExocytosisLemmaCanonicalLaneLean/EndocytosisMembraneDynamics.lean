import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure MembraneDynamicsPackage where
  plasmaMembraneLipidBilayer : Type u
  lipidRaftDomain : Prop
  membraneCurvature : Prop
  clathrinCoatFormation : Prop
  dynaminGtpaseActivity : Prop
  membraneFission : Prop

structure MembraneDynamicsEvidence (M : MembraneDynamicsPackage) where
  lipidRaftDomainClosed : M.lipidRaftDomain
  membraneCurvatureClosed : M.membraneCurvature
  clathrinCoatFormationClosed : M.clathrinCoatFormation
  dynaminGtpaseActivityClosed : M.dynaminGtpaseActivity
  membraneFissionClosed : M.membraneFission

def MembraneDynamicsClosed (M : MembraneDynamicsPackage) : Prop :=
  M.lipidRaftDomain ∧ M.membraneCurvature ∧ M.clathrinCoatFormation ∧ M.dynaminGtpaseActivity ∧ M.membraneFission

theorem membrane_dynamics_closed_from_evidence (M : MembraneDynamicsPackage) (E : MembraneDynamicsEvidence M) : MembraneDynamicsClosed M := by
  exact And.intro E.lipidRaftDomainClosed (And.intro E.membraneCurvatureClosed (And.intro E.clathrinCoatFormationClosed (And.intro E.dynaminGtpaseActivityClosed E.membraneFissionClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse