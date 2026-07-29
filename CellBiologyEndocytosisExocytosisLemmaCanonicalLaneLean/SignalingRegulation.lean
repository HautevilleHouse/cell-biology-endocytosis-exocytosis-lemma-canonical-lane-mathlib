import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure SignalingRegulationPackage where
  receptorInternalization : Prop
  signalAttenuation : Prop
  membraneComposition : Prop
  cytoskeletalDynamics : Prop

structure SignalingRegulationEvidence (S : SignalingRegulationPackage) where
  receptorInternalizationClosed : S.receptorInternalization
  signalAttenuationClosed : S.signalAttenuation
  membraneCompositionClosed : S.membraneComposition
  cytoskeletalDynamicsClosed : S.cytoskeletalDynamics

def SignalingRegulationClosed (S : SignalingRegulationPackage) : Prop :=
  S.receptorInternalization ∧ S.signalAttenuation ∧ S.membraneComposition ∧ S.cytoskeletalDynamics

theorem signaling_regulation_closed_from_evidence
    (S : SignalingRegulationPackage) (Ev : SignalingRegulationEvidence S) :
    SignalingRegulationClosed S := by
  exact And.intro Ev.receptorInternalizationClosed
    (And.intro Ev.signalAttenuationClosed
      (And.intro Ev.membraneCompositionClosed Ev.cytoskeletalDynamicsClosed))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse