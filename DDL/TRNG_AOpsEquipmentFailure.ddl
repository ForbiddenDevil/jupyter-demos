create database TRNG_AOpsEquipmentFailure from demonow as perm=0;
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_miles",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/stryker-gen-miles/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_part_fails",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/stryker-gen-part-fails/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_wblMLE_Data",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/wblMLE-Data/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_wblMLE_result",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/wblMLE-result/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_WblMLE_Work",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/WblMLE-Work/'));
create foreign table gs_tables_db."TRNG_AOpsEquipmentFailure_wbl_mdl",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-AOpsEquipmentFailure/wbl-mdl/'));
replace view TRNG_AOpsEquipmentFailure.WblMLE_Work as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_WblMLE_Work";
replace view TRNG_AOpsEquipmentFailure.stryker_gen_miles as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_miles";
replace view TRNG_AOpsEquipmentFailure.stryker_gen_part_fails as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_stryker_gen_part_fails";
replace view TRNG_AOpsEquipmentFailure.wblMLE_Data as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_wblMLE_Data";
replace view TRNG_AOpsEquipmentFailure.wblMLE_result as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_wblMLE_result";
replace view TRNG_AOpsEquipmentFailure.wbl_mdl as locking row for access select * from  gs_tables_db."TRNG_AOpsEquipmentFailure_wbl_mdl";