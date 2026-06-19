SELECT DISTINCT
 
    isl.use_for_paychecks AS use_for_paychecks,
 
    isl.document_number AS document_number,
 
    isl.disability_notes AS disability_notes,
 
    CASE WHEN isl.employment_status IS NOT NULL THEN isl.employment_status ELSE od.EMPLOYMENTSTATUSDESCRIPTION END AS employment_status,
 
    isl.foreign_state_province AS foreign_state_province,
 
    isl.enable_self_service AS enable_self_service,
 
    CASE WHEN isl.termination_date IS NOT NULL THEN isl.termination_date ELSE od.TERMINATIONDATE END AS termination_date,
 
    isl.rehire_date AS rehire_date,
 
    isl.i9_completed AS i9_completed,
 
    CASE WHEN isl.employee_number IS NOT NULL THEN CAST(isl.employee_number AS VARCHAR) ELSE CAST(od.EMPLOYEENUMBER AS VARCHAR) END AS employee_number,
 
    isl.employment_category_full_time_equivalent AS employment_category_full_time_equivalent,
 
    CASE WHEN isl.client_id IS NOT NULL THEN CAST(isl.client_id AS VARCHAR) ELSE od.CLIENTID END AS client_id,
 
    isl.updated_disabled_effective_date AS updated_disabled_effective_date,
 
    CASE WHEN isl.is_remote_worker IS NOT NULL THEN isl.is_remote_worker ELSE od.ISREMOTEWORKER END AS is_remote_worker,
 
    CASE WHEN isl.normal_hours IS NOT NULL THEN isl.normal_hours ELSE od.NORMALHOURS END AS normal_hours,
 
    isl.status_date AS status_date,
 
    isl.military_state AS military_state,
 
    isl.reciprocity_rule AS reciprocity_rule,
 
    CASE WHEN isl.military_status IS NOT NULL THEN isl.military_status ELSE od.MILITARYSTATUSDESCRIPTION END AS military_status,
 
    isl.termination_type AS termination_type,
 
    isl.citizenship AS citizenship,
 
    CASE WHEN isl.gender IS NOT NULL THEN isl.gender ELSE od.GENDERDESCRIPTION END AS gender,
 
    CASE WHEN isl.salary_effective_date IS NOT NULL THEN isl.salary_effective_date ELSE od.EMPLOYEEPAYEFFECTIVEDATE END AS salary_effective_date,
 
    isl.timecard_punch_status_is_in AS timecard_punch_status_is_in,
 
    isl.document_file_name AS document_file_name,
 
    CASE WHEN isl.hourly_rate IS NOT NULL THEN isl.hourly_rate ELSE od.HOURLYRATE END AS hourly_rate,
 
    CASE WHEN isl.ssn IS NOT NULL THEN isl.ssn ELSE od.SSN END AS ssn,
 
    isl.is_recently_separated_veteran AS is_recently_separated_veteran,
 
    CASE WHEN isl.timeclock_id IS NOT NULL THEN isl.timeclock_id ELSE od.TIMECLOCKID END AS timeclock_id,
 
    isl.job_is_seasonal AS job_is_seasonal,
 
    CASE WHEN isl.ethnic_origin IS NOT NULL THEN isl.ethnic_origin ELSE od.ETHNICORIGINDESCRIPTION END AS ethnic_origin,
 
    isl.document_description AS document_description,
 
    CASE WHEN isl.adjusted_service_date IS NOT NULL THEN isl.adjusted_service_date ELSE od.ADJUSTEDSERVICEDATE END AS adjusted_service_date,
 
    CASE WHEN isl.termination_reason IS NOT NULL THEN isl.termination_reason ELSE od.TERMINATIONREASONDESCRIPTION END AS termination_reason,
 
    isl.expiration_date AS expiration_date,
 
    isl.disabled_requires_accomodation AS disabled_requires_accomodation,
 
    isl.updated_job_effective_date AS updated_job_effective_date,
 
    isl.application_date AS application_date,
 
    CASE WHEN isl.birth_date IS NOT NULL THEN isl.birth_date ELSE od.BIRTHDATE END AS birth_date,
 
    isl.disabled AS disabled,
 
    CASE WHEN isl.soc_code IS NOT NULL THEN isl.soc_code ELSE od.SOCCODE END AS soc_code,
 
    CASE WHEN isl.country IS NOT NULL THEN CAST(isl.country AS VARCHAR) ELSE od.COUNTY END AS country,
 
  --  CASE WHEN isl.work_location IS NOT NULL THEN isl.work_location ELSE od.LOCATIONID END AS work_location,
 
    isl.work_location AS work_location,
 
    isl.document_code AS document_code,
 
    isl.protected_veteran AS protected_veteran,
 
    isl.i9_completed_date AS i9_completed_date,
 
    isl.updated_status_date AS updated_status_date,
 
    CASE WHEN isl.employment_category_code IS NOT NULL THEN isl.employment_category_code ELSE od.EMPLOYMENTCATEGORYCODE END AS employment_category_code,
 
    isl.updated_hire_date AS updated_hire_date,
 
    isl.annual_salary AS annual_salary,
 
    isl.job_group AS job_group,
 
    isl.aca_employment_status AS aca_employment_status,
 
    CASE WHEN isl.tax_exempt_status IS NOT NULL THEN CAST(isl.tax_exempt_status AS VARCHAR) ELSE od.TAXEXEMPTSTATUSDESCRIPTION END AS tax_exempt_status,
 
    CASE WHEN isl.email_address IS NOT NULL THEN  isl.email_address ELSE od.EMAILADDRESS END AS EMAIL_ADDRESS,
 
    isl.is_supervisor AS is_supervisor,
 
    isl.unique_id AS unique_id,
 
    isl.timecard_punch_status_date AS timecard_punch_status_date,
 
    isl.document_content AS document_content,
 
    CASE WHEN isl.pay_frequency IS NOT NULL THEN CAST(isl.pay_frequency AS VARCHAR) ELSE od.FREQUENCY END AS pay_frequency,
 
    isl.disability_description AS disability_description,
 
    isl.job_offered_date AS job_offered_date,
 
    isl.veteran_status_not_specified AS veteran_status_not_specified,
 
    isl.profile_picture AS profile_picture,
 
    CASE WHEN isl.workers_comp_code IS NOT NULL THEN isl.workers_comp_code ELSE od.WORKERSCOMPCODE END AS workers_comp_code,
 
    isl.issuing_authority AS issuing_authority,
 
    CASE WHEN isl.job_effective_date IS NOT NULL THEN isl.job_effective_date ELSE od.EMPLOYEEJOBEFFECTIVEDATE END AS job_effective_date,
 
    CASE WHEN isl.job_code IS NOT NULL THEN isl.job_code ELSE od.JOBCODE END AS job_code,
 
    CASE WHEN isl.job_title IS NOT NULL THEN isl.job_title ELSE od.JOBTITLE END AS job_title,
 
    CASE WHEN isl.job_eeo_category IS NOT NULL THEN isl.job_eeo_category ELSE od.EEOCATEGORYDESCRIPTION END AS job_eeo_category,
 
    CASE WHEN isl.legal_id IS NOT NULL THEN CAST(isl.legal_id AS VARCHAR) ELSE od.LEGALID END AS legal_id,
 
    isl.is_manager AS is_manager,
 
    CASE WHEN isl.pay_group IS NOT NULL THEN isl.pay_group ELSE od.FREQUENCYDESCRIPTION END AS pay_group,
 
    CASE WHEN isl.job_flsaexempt IS NOT NULL THEN isl.job_flsaexempt ELSE od.FLSAEXEMPT END AS job_flsaexempt,
 
    isl.job_accepted_date AS job_accepted_date,
 
    CASE WHEN isl.per_pay_salary IS NOT NULL THEN isl.per_pay_salary ELSE od.PERPAYSALARY END AS per_pay_salary,
 
    isl.original_hire_date AS original_hire_date,
 
    CASE WHEN isl.pay_type IS NOT NULL THEN isl.pay_type ELSE od.PAYTYPEDESCRIPTION END AS pay_type,
 
    CASE WHEN isl.tobacco_use IS NOT NULL THEN isl.tobacco_use ELSE od.TOBACCOUSE END AS tobacco_use,
 
    CASE WHEN isl.employee_id IS NOT NULL THEN CAST(isl.employee_id AS VARCHAR) ELSE od.EMPLOYEEID END AS employee_id,
 
    isl.allow_supervisor_access AS allow_supervisor_access,
 
    isl.include_certification AS include_certification,
 
    isl.work_location_dash_description AS work_location_dash_description,
 
    CASE WHEN isl.job_is_union IS NOT NULL THEN isl.job_is_union ELSE od.UNIONEMPLOYEE END AS job_is_union,
 
    CASE WHEN isl.eeo_gender_override IS NOT NULL THEN isl.eeo_gender_override ELSE od.EEOGENDERDESCRIPTION END AS eeo_gender_override,
 
    isl.disabled_effective_date AS disabled_effective_date,
 
    isl.allow_employee_access AS allow_employee_access,
 
    CASE WHEN isl.hire_date IS NOT NULL THEN isl.hire_date ELSE od.HIREDATE END AS hire_date,
 
    CASE WHEN isl.eligible_for_rehire IS NOT NULL THEN isl.eligible_for_rehire ELSE od.ELIGIBLEFORREHIRE END AS eligible_for_rehire,
 
    isl.allow_manager_access AS allow_manager_access,
 
    CASE WHEN isl.employment_category_effective_date IS NOT NULL THEN isl.employment_category_effective_date ELSE od.EMPLOYMENTCATEGORYEFFECTIVEDATE END AS employment_category_effective_date,
 
    isl.is_pending AS is_pending,
 
    isl.military_city AS military_city,
 
    CASE WHEN isl.marital_status IS NOT NULL THEN isl.marital_status ELSE od.MARITALSTATUSDESCRIPTION END AS marital_status,
 
    CASE WHEN isl.legal_code IS NOT NULL THEN isl.legal_code ELSE od.COMPANYCODE END AS legal_code,
 
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
 
    CASE WHEN isl.mobile_phone IS NOT NULL THEN isl.mobile_phone ELSE od.MOBILEPHONE END AS mobile_phone,
 
    CASE WHEN isl.state IS NOT NULL THEN isl.state ELSE od.STATECODE END AS state,
 
    CASE WHEN isl.home_phone IS NOT NULL THEN isl.home_phone ELSE od.HOMEPHONE END AS home_phone,
 
    isl.school_district_code AS school_district_code,
 
    CASE WHEN isl.first_name IS NOT NULL THEN isl.first_name ELSE od.FIRSTNAME END AS first_name,
 
    CASE WHEN isl.suffix IS NOT NULL THEN isl.suffix ELSE od.SUFFIX END AS suffix,
 
    CASE WHEN isl.personal_email_address IS NOT NULL THEN isl.personal_email_address ELSE od.PERSONALEMAILADDRESS END AS personal_email_address,
 
    isl.resident_geo_code AS resident_geo_code,
 
    CASE WHEN isl.prefix IS NOT NULL THEN isl.prefix ELSE od.PREFIX END AS prefix,
 
    isl.delete_address AS delete_address,
 
    CASE WHEN isl.city IS NOT NULL THEN CAST(isl.city AS VARCHAR) ELSE od.CITY END AS city,
 
    isl.use_for_tax_forms AS use_for_tax_forms,
 
    CASE WHEN isl.zip_code IS NOT NULL THEN CAST(isl.zip_code AS VARCHAR) ELSE od.ZIPCODE END AS zip_code,
 
    isl.foreign_postal_code AS foreign_postal_code,
 
    CASE WHEN isl.middle_name IS NOT NULL THEN isl.middle_name ELSE od.MIDDLENAME END AS middle_name,
 
    CASE WHEN isl.address1 IS NOT NULL THEN CAST(isl.address1 AS VARCHAR) ELSE od.ADDRESS1 END AS address1,
 
    CASE WHEN isl.office_phone IS NOT NULL THEN isl.office_phone ELSE od.OFFICEPHONE END AS office_phone,
 
    CASE WHEN isl.last_name IS NOT NULL THEN isl.last_name ELSE od.LASTNAME END AS last_name,
 
    CASE WHEN isl.fax_number IS NOT NULL THEN isl.fax_number ELSE od.FAXNUMBER END AS fax_number,
 
    CASE WHEN isl.address2 IS NOT NULL THEN CAST(isl.address2 AS VARCHAR) ELSE od.ADDRESS2 END AS address2,
 
    CASE WHEN isl.preferred_name IS NOT NULL THEN isl.preferred_name ELSE od.PREFERREDNAME END AS preferred_name,
 
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
 
    CASE WHEN isl.SOURCE IS NOT NULL THEN isl.SOURCE ELSE od.SOURCE END AS SOURCE,
 
    CASE WHEN isl.source_pk IS NOT NULL THEN isl.source_pk ELSE CONCAT_WS('.',od.SOURCE,od.employeeid,od.clientid) END AS SOURCE_PK,
 
    CASE WHEN isl.HR_CLIENT_ID IS NOT NULL THEN isl.HR_CLIENT_ID ELSE CONCAT_WS('.',od.SOURCE,od.CLIENTCODE) END AS HR_CLIENT_ID,
 
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
