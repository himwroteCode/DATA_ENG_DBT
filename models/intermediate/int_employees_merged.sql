SELECT DISTINCT
 
    isl.use_for_paychecks AS use_for_paychecks,
 
    isl.document_number AS document_number,
 
    isl.disability_notes AS disability_notes,
 
    COALESCE(CAST(isl.employment_status AS VARCHAR), CAST(od.EMPLOYMENTSTATUSDESCRIPTION AS VARCHAR)) AS employment_status,
 
    isl.foreign_state_province AS foreign_state_province,
 
    isl.enable_self_service AS enable_self_service,
 
    COALESCE(CAST(isl.termination_date AS VARCHAR), CAST(od.TERMINATIONDATE AS VARCHAR)) AS termination_date,
 
    isl.rehire_date AS rehire_date,
 
    isl.i9_completed AS i9_completed,
 
    COALESCE(CAST(isl.employee_number AS VARCHAR), CAST(od.EMPLOYEENUMBER AS VARCHAR)) AS employee_number,
 
    isl.employment_category_full_time_equivalent AS employment_category_full_time_equivalent,
 
    COALESCE(CAST(isl.client_id AS VARCHAR), CAST(od.CLIENTID AS VARCHAR)) AS client_id,
 
    isl.updated_disabled_effective_date AS updated_disabled_effective_date,
 
    COALESCE(CAST(isl.is_remote_worker AS VARCHAR), CAST(od.ISREMOTEWORKER AS VARCHAR)) AS is_remote_worker,
 
    COALESCE(CAST(isl.normal_hours AS VARCHAR), CAST(od.NORMALHOURS AS VARCHAR)) AS normal_hours,
 
    isl.status_date AS status_date,
 
    isl.military_state AS military_state,
 
    isl.reciprocity_rule AS reciprocity_rule,
 
    COALESCE(CAST(isl.military_status AS VARCHAR), CAST(od.MILITARYSTATUSDESCRIPTION AS VARCHAR)) AS military_status,
 
    isl.termination_type AS termination_type,
 
    isl.citizenship AS citizenship,
 
    COALESCE(CAST(isl.gender AS VARCHAR), CAST(od.GENDERDESCRIPTION AS VARCHAR)) AS gender,
 
    COALESCE(CAST(isl.salary_effective_date AS VARCHAR), CAST(od.EMPLOYEEPAYEFFECTIVEDATE AS VARCHAR)) AS salary_effective_date,
 
    isl.timecard_punch_status_is_in AS timecard_punch_status_is_in,
 
    isl.document_file_name AS document_file_name,
 
    COALESCE(CAST(isl.hourly_rate AS VARCHAR), CAST(od.HOURLYRATE AS VARCHAR)) AS hourly_rate,
 
    COALESCE(CAST(isl.ssn AS VARCHAR), CAST(od.SSN AS VARCHAR)) AS ssn,
 
    isl.is_recently_separated_veteran AS is_recently_separated_veteran,
 
    COALESCE(CAST(isl.timeclock_id AS VARCHAR), CAST(od.TIMECLOCKID AS VARCHAR)) AS timeclock_id,
 
    isl.job_is_seasonal AS job_is_seasonal,
 
    COALESCE(CAST(isl.ethnic_origin AS VARCHAR), CAST(od.ETHNICORIGINDESCRIPTION AS VARCHAR)) AS ethnic_origin,
 
    isl.document_description AS document_description,
 
    COALESCE(CAST(isl.adjusted_service_date AS VARCHAR), CAST(od.ADJUSTEDSERVICEDATE AS VARCHAR)) AS adjusted_service_date,
 
    COALESCE(CAST(isl.termination_reason AS VARCHAR), CAST(od.TERMINATIONREASONDESCRIPTION AS VARCHAR)) AS termination_reason,
 
    isl.expiration_date AS expiration_date,
 
    isl.disabled_requires_accomodation AS disabled_requires_accomodation,
 
    isl.updated_job_effective_date AS updated_job_effective_date,
 
    isl.application_date AS application_date,
 
    COALESCE(CAST(isl.birth_date AS VARCHAR), CAST(od.BIRTHDATE AS VARCHAR)) AS birth_date,
 
    isl.disabled AS disabled,
 
    COALESCE(CAST(isl.soc_code AS VARCHAR), CAST(od.SOCCODE AS VARCHAR)) AS soc_code,
 
    COALESCE(CAST(isl.country AS VARCHAR), CAST(od.COUNTY AS VARCHAR)) AS country,
 
  --  COALESCE(CAST(isl.work_location AS VARCHAR), CAST(od.LOCATIONID AS VARCHAR)) AS work_location,
 
    isl.work_location AS work_location,
 
    isl.document_code AS document_code,
 
    isl.protected_veteran AS protected_veteran,
 
    isl.i9_completed_date AS i9_completed_date,
 
    isl.updated_status_date AS updated_status_date,
 
    COALESCE(CAST(isl.employment_category_code AS VARCHAR), CAST(od.EMPLOYMENTCATEGORYCODE AS VARCHAR)) AS employment_category_code,
 
    isl.updated_hire_date AS updated_hire_date,
 
    isl.annual_salary AS annual_salary,
 
    isl.job_group AS job_group,
 
    isl.aca_employment_status AS aca_employment_status,
 
    COALESCE(CAST(isl.tax_exempt_status AS VARCHAR), CAST(od.TAXEXEMPTSTATUSDESCRIPTION AS VARCHAR)) AS tax_exempt_status,
 
    COALESCE(CAST(isl.email_address AS VARCHAR), CAST(od.EMAILADDRESS AS VARCHAR)) AS EMAIL_ADDRESS,
 
    isl.is_supervisor AS is_supervisor,
 
    isl.unique_id AS unique_id,
 
    isl.timecard_punch_status_date AS timecard_punch_status_date,
 
    isl.document_content AS document_content,
 
    COALESCE(CAST(isl.pay_frequency AS VARCHAR), CAST(od.FREQUENCY AS VARCHAR)) AS pay_frequency,
 
    isl.disability_description AS disability_description,
 
    isl.job_offered_date AS job_offered_date,
 
    isl.veteran_status_not_specified AS veteran_status_not_specified,
 
    isl.profile_picture AS profile_picture,
 
    COALESCE(CAST(isl.workers_comp_code AS VARCHAR), CAST(od.WORKERSCOMPCODE AS VARCHAR)) AS workers_comp_code,
 
    isl.issuing_authority AS issuing_authority,
 
    COALESCE(CAST(isl.job_effective_date AS VARCHAR), CAST(od.EMPLOYEEJOBEFFECTIVEDATE AS VARCHAR)) AS job_effective_date,
 
    COALESCE(CAST(isl.job_code AS VARCHAR), CAST(od.JOBCODE AS VARCHAR)) AS job_code,
 
    COALESCE(CAST(isl.job_title AS VARCHAR), CAST(od.JOBTITLE AS VARCHAR)) AS job_title,
 
    COALESCE(CAST(isl.job_eeo_category AS VARCHAR), CAST(od.EEOCATEGORYDESCRIPTION AS VARCHAR)) AS job_eeo_category,
 
    COALESCE(CAST(isl.legal_id AS VARCHAR), CAST(od.LEGALID AS VARCHAR)) AS legal_id,
 
    isl.is_manager AS is_manager,
 
    COALESCE(CAST(isl.pay_group AS VARCHAR), CAST(od.FREQUENCYDESCRIPTION AS VARCHAR)) AS pay_group,
 
    COALESCE(CAST(isl.job_flsaexempt AS VARCHAR), CAST(od.FLSAEXEMPT AS VARCHAR)) AS job_flsaexempt,
 
    isl.job_accepted_date AS job_accepted_date,
 
    COALESCE(CAST(isl.per_pay_salary AS VARCHAR), CAST(od.PERPAYSALARY AS VARCHAR)) AS per_pay_salary,
 
    isl.original_hire_date AS original_hire_date,
 
    COALESCE(CAST(isl.pay_type AS VARCHAR), CAST(od.PAYTYPEDESCRIPTION AS VARCHAR)) AS pay_type,
 
    COALESCE(CAST(isl.tobacco_use AS VARCHAR), CAST(od.TOBACCOUSE AS VARCHAR)) AS tobacco_use,
 
    COALESCE(CAST(isl.employee_id AS VARCHAR), CAST(od.EMPLOYEEID AS VARCHAR)) AS employee_id,
 
    isl.allow_supervisor_access AS allow_supervisor_access,
 
    isl.include_certification AS include_certification,
 
    isl.work_location_dash_description AS work_location_dash_description,
 
    COALESCE(CAST(isl.job_is_union AS VARCHAR), CAST(od.UNIONEMPLOYEE AS VARCHAR)) AS job_is_union,
 
    COALESCE(CAST(isl.eeo_gender_override AS VARCHAR), CAST(od.EEOGENDERDESCRIPTION AS VARCHAR)) AS eeo_gender_override,
 
    isl.disabled_effective_date AS disabled_effective_date,
 
    isl.allow_employee_access AS allow_employee_access,
 
    COALESCE(CAST(isl.hire_date AS VARCHAR), CAST(od.HIREDATE AS VARCHAR)) AS hire_date,
 
    COALESCE(CAST(isl.eligible_for_rehire AS VARCHAR), CAST(od.ELIGIBLEFORREHIRE AS VARCHAR)) AS eligible_for_rehire,
 
    isl.allow_manager_access AS allow_manager_access,
 
    COALESCE(CAST(isl.employment_category_effective_date AS VARCHAR), CAST(od.EMPLOYMENTCATEGORYEFFECTIVEDATE AS VARCHAR)) AS employment_category_effective_date,
 
    isl.is_pending AS is_pending,
 
    isl.military_city AS military_city,
 
    COALESCE(CAST(isl.marital_status AS VARCHAR), CAST(od.MARITALSTATUSDESCRIPTION AS VARCHAR)) AS marital_status,
 
    COALESCE(CAST(isl.legal_code AS VARCHAR), CAST(od.COMPANYCODE AS VARCHAR)) AS legal_code,
 
    isl.active_duty_separation_date AS active_duty_separation_date,
 
    isl.id_type AS id_type,
 
    isl.updated_salary_effective_date AS updated_salary_effective_date,
 
    od.SERVICEGROUPID AS SERVICE_GROUP_ID,
 
    od.SERVICEGROUPNAME AS SERVICE_GROUP_NAME,
 
    od.PEOID AS PEO_ID,
 
    od.PEOLEGALNAME AS PEO_LEGAL_NAME,
 
    od.CLIENTCODE AS CLIENT_CODE,
 
    od.CLIENTNAME AS CLIENT_NAME,
 
    od.COMPANYID AS COMPANY_ID,
 
    od.COMPANYNAME AS COMPANY_NAME,
 
    od.PERSONID AS PERSON_ID,
 
    COALESCE(CAST(isl.mobile_phone AS VARCHAR), CAST(od.MOBILEPHONE AS VARCHAR)) AS mobile_phone,
 
    COALESCE(CAST(isl.state AS VARCHAR), CAST(od.STATECODE AS VARCHAR)) AS state,
 
    COALESCE(CAST(isl.home_phone AS VARCHAR), CAST(od.HOMEPHONE AS VARCHAR)) AS home_phone,
 
    isl.school_district_code AS school_district_code,
 
    COALESCE(CAST(isl.first_name AS VARCHAR), CAST(od.FIRSTNAME AS VARCHAR)) AS first_name,
 
    COALESCE(CAST(isl.suffix AS VARCHAR), CAST(od.SUFFIX AS VARCHAR)) AS suffix,
 
    COALESCE(CAST(isl.personal_email_address AS VARCHAR), CAST(od.PERSONALEMAILADDRESS AS VARCHAR)) AS personal_email_address,
 
    isl.resident_geo_code AS resident_geo_code,
 
    COALESCE(CAST(isl.prefix AS VARCHAR), CAST(od.PREFIX AS VARCHAR)) AS prefix,
 
    isl.delete_address AS delete_address,
 
    COALESCE(CAST(isl.city AS VARCHAR), CAST(od.CITY AS VARCHAR)) AS city,
 
    isl.use_for_tax_forms AS use_for_tax_forms,
 
    COALESCE(CAST(isl.zip_code AS VARCHAR), CAST(od.ZIPCODE AS VARCHAR)) AS zip_code,
 
    isl.foreign_postal_code AS foreign_postal_code,
 
    COALESCE(CAST(isl.middle_name AS VARCHAR), CAST(od.MIDDLENAME AS VARCHAR)) AS middle_name,
 
    COALESCE(CAST(isl.address1 AS VARCHAR), CAST(od.ADDRESS1 AS VARCHAR)) AS address1,
 
    COALESCE(CAST(isl.office_phone AS VARCHAR), CAST(od.OFFICEPHONE AS VARCHAR)) AS office_phone,
 
    COALESCE(CAST(isl.last_name AS VARCHAR), CAST(od.LASTNAME AS VARCHAR)) AS last_name,
 
    COALESCE(CAST(isl.fax_number AS VARCHAR), CAST(od.FAXNUMBER AS VARCHAR)) AS fax_number,
 
    COALESCE(CAST(isl.address2 AS VARCHAR), CAST(od.ADDRESS2 AS VARCHAR)) AS address2,
 
    COALESCE(CAST(isl.preferred_name AS VARCHAR), CAST(od.PREFERREDNAME AS VARCHAR)) AS preferred_name,
 
    isl.preferred_pronouns AS preferred_pronouns,
 
    od.DECEASED AS DECEASED,
 
    od.GENDERCODE AS GENDER_CODE,
 
    od.ETHNICORIGINCODE AS ETHNIC_ORIGIN_CODE,
 
    od.MARITALSTATUSCODE AS MARITAL_STATUS_CODE,
 
    od.MILITARYSTATUSCODE AS MILITARY_STATUS_CODE,
 
    od.EEOGENDERCODE AS EEO_GENDER_CODE,
 
    od.TOBACCOSTATUSID AS TOBACCO_STATUS_ID,
 
    od.TOBACCOSTATUSEFFECTIVEDATE AS TOBACCO_STATUS_EFFECTIVE_DATE,
 
    CAST(od.EMPLOYEEEMPLOYMENTID AS VARCHAR) AS EMPLOYEE_EMPLOYMENT_ID,
 
    od.TERMINATIONREASONID AS TERMINATION_REASON_ID,
 
    od.TERMINATIONREASONCODE AS TERMINATION_REASON_CODE,
 
    od.NEWHIRENOTES AS NEW_HIRE_NOTES,
 
    od.TERMINATIONNOTES AS TERMINATION_NOTES,
 
    CAST(od.EMPLOYEEEMPLOYMENTCATEGORYID AS VARCHAR) AS EMPLOYEE_EMPLOYMENT_CATEGORY_ID,
 
    CAST(od.EMPLOYMENTCATEGORYID AS VARCHAR) AS EMPLOYMENT_CATEGORY_ID,
 
    od.EMPLOYMENTCATEGORYDESCRIPTION AS EMPLOYMENT_CATEGORY_DESCRIPTION,
 
    od.STATUTORYEMPLOYEE AS STATUTORY_EMPLOYEE,
 
    od.QUALIFIEDPENSIONPLAN AS QUALIFIED_PENSION_PLAN,
 
    od.HIGHLYCOMPENSATED AS HIGHLY_COMPENSATED,
 
    od.CORPORATEOFFICER AS CORPORATE_OFFICER,
 
    od.OWNERSHIPPERCENT AS OWNERSHIP_PERCENT,
 
    od.ISACAVARIABLEFULLTIME AS IS_ACA_VARIABLE_FULL_TIME,
 
    od.FULLTIMEEQUIVALENT AS FULL_TIME_EQUIVALENT,
 
    od.EMPLOYMENTSTATUSEFFECTIVEDATE AS EMPLOYMENT_STATUS_EFFECTIVE_DATE,
 
    od.ENDDATE AS END_DATE,
 
    od.EMPLOYMENTSTATUSCODE AS EMPLOYMENT_STATUS_CODE,
 
    od.EMPLOYEEJOBID AS EMPLOYEE_JOB_ID,
 
    od.JOBID AS JOB_ID,
 
    od.EEOCATEGORYID AS EEO_CATEGORY_ID,
 
    od.SUPERVISOREMPLOYEEID AS SUPERVISOR_EMPLOYEE_ID,
 
    od.SUPERVISORFIRSTNAME AS SUPERVISOR_FIRST_NAME,
 
    od.SUPERVISORLASTNAME AS SUPERVISOR_LAST_NAME,
 
    od.MANAGEREMPLOYEEID AS MANAGER_EMPLOYEE_ID,
 
    od.MANAGERFIRSTNAME AS MANAGER_FIRST_NAME,
 
    od.MANAGERLASTNAME AS MANAGER_LAST_NAME,
 
    od.WORKERSCOMPID AS WORKERS_COMP_ID,
 
    od.SHIFTNUMBER AS SHIFT_NUMBER,
 
    od.COMPENSATIONPLANID AS COMPENSATION_PLAN_ID,
 
    od.COMPENSATIONPLANCODE AS COMPENSATION_PLAN_CODE,
 
    od.COMPANSATIONPLANDESCRIPTION AS COMPENSATION_PLAN_DESCRIPTION,
 
    od.SOCCODEID AS SOC_CODE_ID,
 
    od.SOCTITLE AS SOC_TITLE,
 
    od.ISWORKERSCOMPEXEMPT AS IS_WORKERS_COMP_EXEMPT,
 
    od.TIMECARDPOLICYID AS TIME_CARD_POLICY_ID,
 
    od.TIMECARDPOLICYNAME AS TIME_CARD_POLICY_NAME,
 
    od.WORKCLASSIFICATIONID AS WORK_CLASSIFICATION_ID,
 
    od.WORKCLASSIFICATIONNAME AS WORK_CLASSIFICATION_NAME,
 
    od.EMPLOYEEPAYID AS EMPLOYEE_PAY_ID,
 
    od.PAYGROUPID AS PAY_GROUP_ID,
 
    od.PAYGROUPNAME AS PAY_GROUP_NAME,
 
    od.PAYTYPECODE AS PAY_TYPE_CODE,
 
    od.ISINACTIVE AS IS_INACTIVE,
 
    od.VERTEXGEOCODE AS VERTEX_GEO_CODE,
 
    od.VERTEXSCHOOLDISTRICT AS VERTEX_SCHOOL_DISTRICT,
 
    od.WORKLOCATIONID AS WORK_LOCATION_ID,
 
    od.OVERRIDEFILINGTYPEID AS OVERRIDE_FILING_TYPE_ID,
 
    od.FILINGTYPEDESCRIPTION AS FILING_TYPE_DESCRIPTION,
 
    od.TAXEXEMPTSTATUSID AS TAX_EXEMPT_STATUS_ID,
 
    od.PEOSTARTDATE AS PEO_START_DATE,
 
    COALESCE(CAST(isl.SOURCE AS VARCHAR), CAST(od.SOURCE AS VARCHAR)) AS SOURCE,
 
    COALESCE(CAST(isl.source_pk AS VARCHAR), CAST(CONCAT_WS('.', od.SOURCE, od.employeeid, od.clientid) AS VARCHAR)) AS SOURCE_PK,
 
    COALESCE(CAST(isl.hr_client_id AS VARCHAR), CAST(CONCAT_WS('.', od.SOURCE, od.CLIENTCODE) AS VARCHAR)) AS HR_CLIENT_ID,
 
MD5(CONCAT(
 
    CASE 

        WHEN isl.employee_id IS NOT NULL THEN CAST(isl.employee_id AS STRING)

        ELSE CAST(od.employeeid AS STRING)

    END || '|' ||
 
    CASE 

        WHEN isl.SOURCE IS NOT NULL THEN CAST(isl.SOURCE AS STRING)

        ELSE CAST(od.SOURCE AS STRING)

    END || '|' ||
 
    CASE 

        WHEN isl.CLIENT_ID IS NOT NULL THEN CAST(isl.CLIENT_ID  AS STRING)

        ELSE CAST(od.clientid AS STRING)

    END
 
)) AS HASH_KEY
from {{ ref('int_employees_isl') }} isl
full outer join {{ source('axi_odata', 'vw_employees') }} od
    on isl.employee_id = od.employeeid
    and isl.source = od.source
