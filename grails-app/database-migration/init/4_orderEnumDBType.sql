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


INSERT INTO type_database_enum_type (version,code,class, position) VALUES (0,'NONE','espamacs.type.implantData.CollateralSurgery',1);

UPDATE type_database_enum_type set position=1 where code='NONE' and class='espamacs.type.implantData.CollateralSurgery';
UPDATE type_database_enum_type set position=2 where code='AORTIC_VALVE_SURGERY' and class='espamacs.type.implantData.CollateralSurgery';
UPDATE type_database_enum_type set position=3 where code='MITRAL_VALVE_SURGERY' and class='espamacs.type.implantData.CollateralSurgery';
UPDATE type_database_enum_type set position=4 where code='TRICUSPID_VALVE_SURGERY' and class='espamacs.type.implantData.CollateralSurgery';
UPDATE type_database_enum_type set position=5 where code='PULMONARY_VALVE_SURGERY' and class='espamacs.type.implantData.CollateralSurgery';
UPDATE type_database_enum_type set position=6 where code='CABG' and class='espamacs.type.implantData.CollateralSurgery';

update type_database_enum_type set position=2 where code='PULSATILE' and class='espamacs.type.implantData.BloodFlowType' and id = 258;
update type_database_enum_type set position=1 where code='CONTINUOUS' and class='espamacs.type.implantData.BloodFlowType' and id = 259;

delete from type_database_enum_type where class='espamacs.type.diagnosis.ImplantCause' and code='OTHERS' and id= 186;