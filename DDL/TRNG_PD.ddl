create database TRNG_PD from demonow as perm=0;
create foreign table gs_tables_db."TRNG_PD_Buoy_Stations_S",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Buoy-Stations-S/'));
create foreign table gs_tables_db."TRNG_PD_date_dim",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/date-dim/'));
create foreign table gs_tables_db."TRNG_PD_Department",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Department/'));
create foreign table gs_tables_db."TRNG_PD_DeptSalary_GT",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/DeptSalary-GT/'));
create foreign table gs_tables_db."TRNG_PD_Employee",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Employee/'));
create foreign table gs_tables_db."TRNG_PD_EmpPhone",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/EmpPhone/'));
create foreign table gs_tables_db."TRNG_PD_Job",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Job/'));
create foreign table gs_tables_db."TRNG_PD_Nation_C",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Nation-C/'));
create foreign table gs_tables_db."TRNG_PD_Region_C",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/Region-C/'));
create foreign table gs_tables_db."TRNG_PD_River_Buoy_NonPTI",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-PD/River-Buoy-NonPTI/'));
replace view TRNG_PD.Buoy_Stations_S as locking row for access select * from  gs_tables_db."TRNG_PD_Buoy_Stations_S";
replace view TRNG_PD.Department as locking row for access select * from  gs_tables_db."TRNG_PD_Department";
replace view TRNG_PD.DeptSalary_GT as locking row for access select * from  gs_tables_db."TRNG_PD_DeptSalary_GT";
replace view TRNG_PD.EmpPhone as locking row for access select * from  gs_tables_db."TRNG_PD_EmpPhone";
replace view TRNG_PD.Employee as locking row for access select * from  gs_tables_db."TRNG_PD_Employee";
replace view TRNG_PD.Job as locking row for access select * from  gs_tables_db."TRNG_PD_Job";
replace view TRNG_PD.Nation_C as locking row for access select * from  gs_tables_db."TRNG_PD_Nation_C";
replace view TRNG_PD.Region_C as locking row for access select * from  gs_tables_db."TRNG_PD_Region_C";
replace view TRNG_PD.River_Buoy_NonPTI as locking row for access select * from  gs_tables_db."TRNG_PD_River_Buoy_NonPTI";
replace view TRNG_PD.date_dim as locking row for access select * from  gs_tables_db."TRNG_PD_date_dim";