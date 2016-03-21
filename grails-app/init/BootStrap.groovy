import espamacs.Centre
import espamacs.EspamacsUser
import espamacs.EspamacsUserRole
import espamacs.Patient
import espamacs.Role
import espamacs.type.CardiacCareType
import espamacs.type.Gender
import espamacs.type.PatientStatus
import espamacs.type.patientData.DiabeticType
import espamacs.type.patientData.DisplemiaType
import espamacs.type.patientData.DrinkerType
import espamacs.type.patientData.HypertensiveType
import espamacs.type.patientData.IntravenouslyDrugsType
import espamacs.type.patientData.MalnutritionType
import espamacs.type.patientData.ObeseType
import espamacs.type.patientData.PreCardiacSurgery
import espamacs.type.patientData.SevereMentalRetardationType
import espamacs.type.patientData.SmokerType
import espamacs.type.patientData.SocialCareType

class BootStrap {

    def init = { servletContext ->
        Role roleUser = new Role("ROLE_USER").save()
        Role roleAdmin = new Role("ROLE_ADMIN").save()

        Centre ph = new Centre(name:"Puerta de hierro").save()
        Centre paz= new Centre(name: "La paz").save()

        new PatientStatus(code:"INCOMPLETE").save()
        new PatientStatus(code:"ACTIVE").save()
        new PatientStatus(code:"INACTIVE").save()

        new Gender(code:"MALE").save()
        new Gender(code:"FEMALE").save()

        new CardiacCareType(code: "SHORT").save()
        new CardiacCareType(code: "LONG").save()

        new SmokerType(code: "NO").save()
        new SmokerType(code: "YES").save()
        new SmokerType(code: "EX-SMOKER").save()
        new SmokerType(code: "UNKNOWN").save()

        new HypertensiveType(code: "NO").save()
        new HypertensiveType(code: "YES").save()
        new HypertensiveType(code: "UNKNOWN").save()

        new DiabeticType(code: "NO").save()
        new DiabeticType(code: "TYPE1").save()
        new DiabeticType(code: "TYPE2").save()
        new DiabeticType(code: "UNKNOWN").save()

        new DisplemiaType(code: "NO").save()
        new DisplemiaType(code: "YES").save()
        new DisplemiaType(code: "UNKNOWN").save()

        new ObeseType(code: "NO").save()
        new ObeseType(code: "YES").save()
        new ObeseType(code: "UNKNOWN").save()

        new MalnutritionType(code: "NO").save()
        new MalnutritionType(code: "YES").save()
        new MalnutritionType(code: "UNKNOWN").save()

        new DrinkerType(code: "NO_NEVER").save()
        new DrinkerType(code: "NO_NOW").save()
        new DrinkerType(code: "YES").save()

        new IntravenouslyDrugsType(code: "NO_NEVER").save()
        new IntravenouslyDrugsType(code: "NO_NOW").save()
        new IntravenouslyDrugsType(code: "YES").save()

        new SevereMentalRetardationType(code: "NO").save()
        new SevereMentalRetardationType(code: "YES").save()
        new SevereMentalRetardationType(code: "UNKNOWN").save()

        new SocialCareType(code: "NO").save()
        new SocialCareType(code: "YES").save()
        new SocialCareType(code: "UNKNOWN").save()

        new PreCardiacSurgery(code: "NO").save()
        new PreCardiacSurgery(code: "CABG").save()
        new PreCardiacSurgery(code: "VALVULAR").save()
        new PreCardiacSurgery(code: "VALVULAR_CORONARY").save()
        new PreCardiacSurgery(code: "CONGENITAL").save()
        new PreCardiacSurgery(code: "LVAD").save()
        new PreCardiacSurgery(code: "RVAD").save()
        new PreCardiacSurgery(code: "ECMO").save()
        new PreCardiacSurgery(code: "OTHER").save()




        /// TEST USERS

        EspamacsUser user = new EspamacsUser("user", "user")
        user.centre = ph
        user.save()
        EspamacsUser admin = new EspamacsUser("admin", "admin")
        admin.centre = paz
        admin.save()

        EspamacsUserRole.create(user, roleUser, true)
        EspamacsUserRole.create(admin, roleUser, true)
        EspamacsUserRole.create(admin, roleAdmin, true)

        // Test patient
        Patient patient = new Patient(
                [
                        patientStatus: PatientStatus.findByCode("INCOMPLETE"),
                        initials: "INC",
                        birthDate: new Date(),
                        weigh: 86.2D,
                        height: 156.3D,
                        gender: Gender.findByCode("FEMALE"),
                        centre:ph,
                        externalId:"ExternalId",
                        cardiacCareType: CardiacCareType.findByCode("LONG")
                ]
        )
        patient.save()

    }
    def destroy = {
    }
}
