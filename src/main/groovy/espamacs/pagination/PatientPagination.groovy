package espamacs.pagination

import espamacs.Centre
import espamacs.type.CardiacCareType
import espamacs.type.PatientStatus;

/**
 * Created by iduetxe on 30/03/16.
 */
public class PatientPagination extends Pagination
{
    String initials
    String externalId
    CardiacCareType cardiacCareType
    Centre centre
    PatientStatus patientStatus

    static constraints = {
        initials nullable: true
        cardiacCareType nullable:true
        centre nullable:true
        externalId nullable:true
        patientStatus nullable:true
    }
}
