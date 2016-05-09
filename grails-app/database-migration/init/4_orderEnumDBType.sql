ALTER TABLE `type_database_enum_type` ADD position INT UNSIGNED NULL;


UPDATE type_database_enum_type set position=3 where code='UNKNOWN' and class='espamacs.type.BooleanDBType';
UPDATE type_database_enum_type set position=1 where code='NO' and class='espamacs.type.BooleanDBType';
UPDATE type_database_enum_type set position=2 where code='YES' and class='espamacs.type.BooleanDBType';

UPDATE type_database_enum_type set position=4 where code='UNKNOWN' and class='espamacs.type.patientData.SmokerType';
UPDATE type_database_enum_type set position=1 where code='NO' and class='espamacs.type.patientData.SmokerType';
UPDATE type_database_enum_type set position=2 where code='YES' and class='espamacs.type.patientData.SmokerType';
UPDATE type_database_enum_type set position=3 where code='EX-SMOKER' and class='espamacs.type.patientData.SmokerType';

UPDATE type_database_enum_type set position=4 where code='UNKNOWN' and class='espamacs.type.patientData.DrinkerType';
UPDATE type_database_enum_type set position=1 where code='NO_NEVER' and class='espamacs.type.patientData.DrinkerType';
UPDATE type_database_enum_type set position=2 where code='NO_NOW' and class='espamacs.type.patientData.DrinkerType';
UPDATE type_database_enum_type set position=3 where code='YES' and class='espamacs.type.patientData.DrinkerType';

UPDATE type_database_enum_type set position=4 where code='UNKNOWN' and class='espamacs.type.patientData.DiabeticType';
UPDATE type_database_enum_type set position=1 where code='NO' and class='espamacs.type.patientData.DiabeticType';
UPDATE type_database_enum_type set position=2 where code='TYPE1' and class='espamacs.type.patientData.DiabeticType';
UPDATE type_database_enum_type set position=3 where code='TYPE2' and class='espamacs.type.patientData.DiabeticType';

UPDATE type_database_enum_type set position=4 where code='UNKNOWN' and class='espamacs.type.patientData.IntravenouslyDrugsType';
UPDATE type_database_enum_type set position=1 where code='NO_NEVER' and class='espamacs.type.patientData.IntravenouslyDrugsType';
UPDATE type_database_enum_type set position=2 where code='NO_NOW' and class='espamacs.type.patientData.IntravenouslyDrugsType';
UPDATE type_database_enum_type set position=3 where code='YES' and class='espamacs.type.patientData.IntravenouslyDrugsType';


delete from type_database_enum_type where class='espamacs.type.diagnosis.ImplantCause' and code='OTHERS' and id= 186;