import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

structure SignalRegulationPackage where
  receptorInternalization : Prop
  ligandReceptorSignaling : Prop
  kinaseActivation : Prop
  calciumMobilization : Prop
  transcriptionalResponse : Prop
  feedbackLoop : Prop

structure SignalRegulationEvidence (S : SignalRegulationPackage) where
  receptorInternalizationClosed : S.receptorInternalization
  ligandReceptorSignalingClosed : S.ligandReceptorSignaling
  kinaseActivationClosed : S.kinaseActivation
  calciumMobilizationClosed : S.calciumMobilization
  transcriptionalResponseClosed : S.transcriptionalResponse
  feedbackLoopClosed : S.feedbackLoop

def SignalRegulationClosed (S : SignalRegulationPackage) : Prop :=
  S.receptorInternalization ∧ S.ligandReceptorSignaling ∧ S.kinaseActivation ∧ S.calciumMobilization ∧ S.transcriptionalResponse ∧ S.feedbackLoop

theorem signal_regulation_closed_from_evidence (S : SignalRegulationPackage) (E : SignalRegulationEvidence S) : SignalRegulationClosed S := by
  exact And.intro E.receptorInternalizationClosed
    (And.intro E.ligandReceptorSignalingClosed
      (And.intro E.kinaseActivationClosed
        (And.intro E.calciumMobilizationClosed
          (And.intro E.transcriptionalResponseClosed E.feedbackLoopClosed))))

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse