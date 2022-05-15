create database TRNG_BustOutFraud from demonow as perm=0;
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_bustouts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-bustouts/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_feature",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-feature/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_predict",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-predict/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_acct_statement",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/acct-statement/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_all_dates",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/all-dates/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_credit_bureau_data",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/credit-bureau-data/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_merchant",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/merchant/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_party",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/party/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_party_acct",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/party-acct/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_daily_counts",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-daily-counts/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_detail",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-detail/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_transaction_detail_staging",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/transaction-detail-staging/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature_day_derived",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature-day-derived/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature_month_derived",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature-month-derived/'));
create foreign table gs_tables_db."TRNG_BustOutFraud_trans_feature_xgboost_model",  external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-BustOutFraud/trans-feature-xgboost-model/'));
replace view TRNG_BustOutFraud.acct_bustouts as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_acct_bustouts";
replace view TRNG_BustOutFraud.acct_feature as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_acct_feature";
replace view TRNG_BustOutFraud.acct_predict as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_acct_predict";
replace view TRNG_BustOutFraud.acct_statement as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_acct_statement";
replace view TRNG_BustOutFraud.all_dates as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_all_dates";
replace view TRNG_BustOutFraud.credit_bureau_data as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_credit_bureau_data";
replace view TRNG_BustOutFraud.merchant as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_merchant";
replace view TRNG_BustOutFraud.party as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_party";
replace view TRNG_BustOutFraud.party_acct as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_party_acct";
replace view TRNG_BustOutFraud.trans_feature as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_trans_feature";
replace view TRNG_BustOutFraud.trans_feature_day_derived as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_trans_feature_day_derived";
replace view TRNG_BustOutFraud.trans_feature_month_derived as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_trans_feature_month_derived";
replace view TRNG_BustOutFraud.trans_feature_xgboost_model as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_trans_feature_xgboost_model";
replace view TRNG_BustOutFraud.transaction_daily_counts as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_transaction_daily_counts";
replace view TRNG_BustOutFraud.transaction_detail as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_transaction_detail";
replace view TRNG_BustOutFraud.transaction_detail_staging as locking row for access select * from  gs_tables_db."TRNG_BustOutFraud_transaction_detail_staging";