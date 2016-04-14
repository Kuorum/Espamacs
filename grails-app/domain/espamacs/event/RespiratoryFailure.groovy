package espamacs.event

class RespiratoryFailure extends Event{

    Integer daysAfterSurgery
    Integer daysWithRespiratoryProblems
    Boolean tracheotomy

    static constraints = {
    }
}
