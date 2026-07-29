import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure SynapticVesicleCyclePackage where
  vesiclePoolOrganization : Prop
  exocytosisTriggering : Prop
  endocytosisRetrieval : Prop
  vesicleReformation : Prop
  neurotransmitterRefilling : Prop

structure SynapticVesicleCycleEvidence (S : SynapticVesicleCyclePackage) where
  vesiclePoolOrganizationClosed : S.vesiclePoolOrganization
  exocytosisTriggeringClosed : S.exocytosisTriggering
  endocytosisRetrievalClosed : S.endocytosisRetrieval
  vesicleReformationClosed : S.vesicleReformation
  neurotransmitterRefillingClosed : S.neurotransmitterRefilling

def SynapticVesicleCycleClosed (S : SynapticVesicleCyclePackage) : Prop :=
  S.vesiclePoolOrganization ∧ S.exocytosisTriggering ∧ S.endocytosisRetrieval ∧ S.vesicleReformation ∧ S.neurotransmitterRefilling

theorem synaptic_vesicle_cycle_closed_from_evidence
    (S : SynapticVesicleCyclePackage)
    (E : SynapticVesicleCycleEvidence S) :
    SynapticVesicleCycleClosed S := by
  exact And.intro E.vesiclePoolOrganizationClosed
    (And.intro E.exocytosisTriggeringClosed
      (And.intro E.endocytosisRetrievalClosed
        (And.intro E.vesicleReformationClosed E.neurotransmitterRefillingClosed)))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse