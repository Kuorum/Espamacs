START TRANSACTION;


update patient p set p.patient_status_id=5 where id < 1000;

update patient p, event e set p.patient_status_id=6 where p.id < 1000 and p.id = e.patient_id and (e.patient_death=1 or e.remove_assistance=1);

COMMIT;