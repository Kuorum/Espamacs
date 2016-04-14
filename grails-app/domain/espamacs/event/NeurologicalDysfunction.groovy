package espamacs.event

import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement
import espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType

class NeurologicalDysfunction extends Event{

    NeurologicalDysfunctionType neurologicalDysfunctionType
    NeurologicalDysfunctionEffect neurologicalDysfunctionEffect
    NeurologicalDysfunctionCause neurologicalDysfunctionCause
    NeurologicalDysfunctionINR inr
    NeurologicalDysfunctionAPTT aptt
    NeurologicalDysfunctionPlace neurologicalDysfunctionPlace
    NeurologicalDysfunctionDiagnosis neurologicalDysfunctionDiagnosis
    Boolean surgery
    NeurologicalDysfunctionTreatement treatement

    static constraints = {
    }
}
