import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleClass where
  object : EndocytosisExocytosisObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EndocytosisExocytosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyEndocytosisExocytosisLemmaCanonicalLaneLean
end HautevilleHouse