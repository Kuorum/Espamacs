package espamacs.pagination

import espamacs.Centre
import espamacs.type.CardiacCareType
import espamacs.type.PatientStatus;

/**
 * Created by iduetxe on 30/03/16.
 */
public class PatientPagination extends Pagination
{
    Long id
    String code
    String externalId
    CardiacCareType cardiacCareType
    Centre centre
    PatientStatus patientStatus

    {
        // By default users will be ordered by id descending
        this.sort = "id"
        this.order ="desc"
    }

    static constraints = {
        code nullable: true
        cardiacCareType nullable:true
        centre nullable:true
        externalId nullable:true
        patientStatus nullable:true
    }
}
