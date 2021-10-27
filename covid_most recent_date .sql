/* this script checks the latest dates from all COVID-related
 * extracts. The latest date of the dataset itself not when the extracts 
 * were updated
 */

 --  select * from stl_load_errors

SELECT max(published_date) as recent,
'ohio_alert_data' as name_table,
'ODH' as source_t
from clutil.covid19_ohio_alert_data

union

SELECT max(as_of_date) as recent,
'ohiohealth_testing_measures' as name_table,
'ohiohealth' as source_t
from clutil.covid19_ohiohealth_testing_measures

union

SELECT max(report_date) as recent,
'ohio_daily_summaries' as name_table,
'ODH' as source_t
from clutil.covid19_ohio_daily_summaries

union

SELECT max(report_date) as recent,
'ohio_daily' as name_table,
'ODH' as source_t
from clutil.covid19_ohio_daily

union

SELECT max(date) as recent,
'reshall_unique' as name_table,
'asymptomatic' as source_t
from clutil.covid19_reshall_unique

union

SELECT max(testing_date) as recent,
'cvs_test' as name_table,
'asymptomatic' as source_t
from clutil.covid19_cvs_tests

union

select max(report_date) as recent,
'stoplight_form_data' as name_table,
'forms' as source_t
from clutil.covid19_stoplight_form_data 

union

select CAST(max(start_time) as Date) as recent,
'daily_housing_data' as name_table,
'forms' as source_t
from clutil.covid19_daily_housing_data

union

select max(date) as recent,
'vaccinatio_main'as name_table,
'ODH' as source_t
from clutil.vaccination_main vm

union
select max(date) as recent,
'vaccination_ou_campus' as name_table,
'OU' as source_t
from clutil.vaccination_ou_campus voc 

union
select max(date) as recent,
'vaccination_ou_hall' as name_table,
'OU' as source_t
from clutil.vaccination_ou_hall voh 

union
select max(date_ordered) as recent,
'ohiohealth_daily_summary' as name_table,
'ohiohealth' as source_t
from clutil.covid19_ohiohealth_daily_summary cods 

order by source_t


