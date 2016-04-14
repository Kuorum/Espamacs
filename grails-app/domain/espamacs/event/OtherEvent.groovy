package espamacs.event

class OtherEvent extends Event{

    String text

    static constraints = {
        text maxSize: 50
    }
}
