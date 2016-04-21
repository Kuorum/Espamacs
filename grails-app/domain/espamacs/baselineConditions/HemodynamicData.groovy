package espamacs.baselineConditions

class HemodynamicData {

    Date catheterizationDate
    Double systolicArterialPressure
    Double diastolicArterialPressure
    Double averageArterialPressure
    Double hearRate

    Double systolicArterialPulmonaryPressure
    Double diastolicArterialPulmonaryPressure
    Double averageArterialPulmonaryPressure

    Double pulmonaryCapillaryPressure
    Double transpulmonaryGradient
    Double centralVenousPressure

    Double pulmonaryVascularResistance
    Double systemicVascularResistance
    Double systolicEffortIndex
    Double cardiacOutput
    Double cardiacIndex


    static constraints = {
    }
}
