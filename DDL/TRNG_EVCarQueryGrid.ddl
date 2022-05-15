create database TRNG_EVCarQueryGrid from demonow as perm=0;
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_bom",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/bom/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_customers",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/customers/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_dealers",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/dealers/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_dtc",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/dtc/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_freeze_frames",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/freeze-frames/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_mfg_plants",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/mfg-plants/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_parts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/parts/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_service_visits",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/service-visits/'));
create foreign table gs_tables_db."TRNG_EVCarQueryGrid_vehicles",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-EVCarQueryGrid/vehicles/'));
replace view TRNG_EVCarQueryGrid.bom as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_bom";
replace view TRNG_EVCarQueryGrid.customers as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_customers";
replace view TRNG_EVCarQueryGrid.dealers as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_dealers";
replace view TRNG_EVCarQueryGrid.dtc as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_dtc";
replace view TRNG_EVCarQueryGrid.freeze_frames as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_freeze_frames";
replace view TRNG_EVCarQueryGrid.mfg_plants as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_mfg_plants";
replace view TRNG_EVCarQueryGrid.parts as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_parts";
replace view TRNG_EVCarQueryGrid.service_visits as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_service_visits";
replace view TRNG_EVCarQueryGrid.vehicles as locking row for access select * from  gs_tables_db."TRNG_EVCarQueryGrid_vehicles";