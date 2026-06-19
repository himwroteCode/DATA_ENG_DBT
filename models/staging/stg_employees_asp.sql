SELECT
t2."id" AS employee_id,  
 
    t2."acaEmploymentStatus" AS aca_employment_status,  
 
    t2."activeDutySeparationDate" AS active_duty_separation_date,  
 
    t2."adjustedServiceDate" AS adjusted_service_date,  
 
    t2."annualSalary" AS annual_salary,  
 
    t2."birthDate" AS birth_date,  
 
    t2."citizenship" AS citizenship,  
 
    t2."disabilityDescription" AS disability_description,  
 
    t2."disabilityNotes" AS disability_notes,  
 
    t2."disabled" AS disabled,  
 
    t2."disabledEffectiveDate" AS disabled_effective_date,  
 
    t2."disabledRequiresAccomodation" AS disabled_requires_accomodation,  
 
    t2."eeoGenderOverride" AS eeo_gender_override,  
 
    t2."eligibleForRehire" AS eligible_for_rehire,  
 
    cast(t2."emailAddress" as string) AS email_address,  
 
    t2."employeeNumber" AS employee_number,  
 
    t2."employmentCategoryCode" AS employment_category_code,  
 
    t2."employmentCategoryEffectiveDate" AS employment_category_effective_date,  
 
    t2."employmentCategoryFullTimeEquivalent" AS employment_category_full_time_equivalent,  
 
    t2."employmentStatus" AS employment_status,  
 
    t2."enableSelfService" AS enable_self_service,  
 
    t2."ethnicOrigin" AS ethnic_origin,  
 
    t2."gender" AS gender,  
 
    t2."hireDate" AS hire_date,  
 
    t2."hourlyRate" AS hourly_rate,  
 
    t2."allowEmployeeAccess" AS allow_employee_access,  
 
    t2."allowManagerAccess" AS allow_manager_access,  
 
    t2."allowSupervisorAccess" AS allow_supervisor_access,  
 
    t2."documentCode" AS document_code,  
 
    t2."documentContent" AS document_content,  
 
    t2."documentDescription" AS document_description,  
 
    t2."documentFileName" AS document_file_name,  
 
    t2."documentNumber" AS document_number,  
 
    t2."expirationDate" AS expiration_date,  
 
    t2."issuingAuthority" AS issuing_authority,  
 
    t2."i9Completed" AS i9_completed,  
 
    t2."i9CompletedDate" AS i9_completed_date,  
 
    t2."idType" AS id_type,  
 
    t2."isManager" AS is_manager,  
 
    t2."isPending" AS is_pending,  
 
    t2."isRecentlySeparatedVeteran" AS is_recently_separated_veteran,  
 
    t2."isRemoteWorker" AS is_remote_worker,  
 
    t2."isSupervisor" AS is_supervisor,  
 
    t2."jobCode" AS job_code,  
 
    t2."jobEeoCategory" AS job_eeo_category,  
 
    t2."jobEffectiveDate" AS job_effective_date,  
 
    t2."jobFLSAExempt" AS job_flsaexempt,  
 
    t2."jobGroup" AS job_group,  
 
    t2."jobIsSeasonal" AS job_is_seasonal,  
 
    t2."jobIsUnion" AS job_is_union,  
 
    t2."jobTitle" AS job_title,  
 
    t2."legalCode" AS legal_code,  
 
    t2."maritalStatus" AS marital_status,  
 
    t2."militaryStatus" AS military_status,  
 
    t2."normalHours" AS normal_hours,  
 
    t2."originalHireDate" AS original_hire_date,  
 
   -- t2."address1" AS address1,  
 
   -- t2."address2" AS address2,  
 
   -- t2."city" AS city,  
 
   -- t2."country" AS country,  
 
   -- t2."deleteAddress" AS delete_address,  
 
    t2."foreignPostalCode" AS name_address_foreign_postal_code,  
 
    t2."foreignStateProvince" AS foreign_state_province,  
 
    t2."militaryCity" AS military_city,  
 
    t2."militaryState" AS military_state,  
 
   -- t2."state" AS state,  
 
    t2."useForPaychecks" AS use_for_paychecks,  
 
    t2."useForTaxForms" AS use_for_tax_forms,  
 
   -- t2."zipCode" AS zip_code,  
 
    t2."payFrequency" AS pay_frequency,  
 
    t2."payGroup" AS pay_group,  
 
    t2."payType" AS pay_type,  
 
    t2."perPaySalary" AS per_pay_salary,  
 
    cast(t2."profilePicture" as string) AS profile_picture,
 
    t2."protectedVeteran" AS protected_veteran,  
 
    t2."reciprocityRule" AS reciprocity_rule,  
 
    t2."rehireDate" AS rehire_date,  
 
    t2."salaryEffectiveDate" AS salary_effective_date,  
 
    t2."socCode" AS soc_code,  
 
    t2."ssn" AS ssn,  
 
    t2."statusDate" AS status_date,  
 
    t2."taxExemptStatus" AS tax_exempt_status,  
 
    t2."terminationDate" AS termination_date,  
 
    t2."terminationReason" AS termination_reason,  
 
    t2."terminationType" AS termination_type,  
 
    t2."timecardPunchStatusDate" AS timecard_punch_status_date,  
 
    t2."timecardPunchStatusIsIn" AS timecard_punch_status_is_in,  
 
    t2."timeclockId" AS timeclock_id,  
 
    t2."tobaccoUse" AS tobacco_use,  
 
    t2."uniqueId" AS unique_id,  
 
    t2."updatedDisabledEffectiveDate" AS updated_disabled_effective_date,  
 
    t2."updatedHireDate" AS updated_hire_date,  
 
    t2."updatedJobEffectiveDate" AS updated_job_effective_date,  
 
    t2."updatedSalaryEffectiveDate" AS updated_salary_effective_date,  
 
    t2."updatedStatusDate" AS updated_status_date,  
 
    t2."veteranStatusNotSpecified" AS veteran_status_not_specified,  
 
    t2."workersCompCode" AS workers_comp_code,  
 
    t2."workLocation" AS work_location,  
 
    t2."workLocationDashDescription" AS work_location_dash_description,  
 
    t2."applicationDate" AS application_date,  
 
    t2."includeCertification" AS include_certification,  
 
    t2."jobAcceptedDate" AS job_accepted_date,  
 
    t2."jobOfferedDate" AS job_offered_date,
 
    t2."path_param_client_id" as client_id,
 
    t3."firstName" AS FIRST_NAME,  
 
    t3."lastName" AS LAST_NAME,  
 
    t3."middleName" AS MIDDLE_NAME,       
 
    t3."preferredName" AS PREFERRED_NAME,  
 
    t3."preferredPronouns" AS PREFERRED_PRONOUNS,  
 
    t3."prefix" AS PREFIX,  
 
    t3."residentGeoCode" AS RESIDENT_GEO_CODE,  
 
    t3."schoolDistrictCode" AS SCHOOL_DISTRICT_CODE,  
 
    t3."suffix" AS SUFFIX,
 
    t3."address1" AS address1,
 
    t3."address2" AS address2,
 
    t3."city" AS city,
 
    t3."country" AS country,
 
    t3."deleteAddress" AS delete_address,
 
    t3."state" AS state,
 
    t3."zipCode" AS zip_code,
 
    t4."faxNumber" AS FAX_NUMBER,  
 
    t4."homePhone" AS HOME_PHONE,  
 
    t4."mobilePhone" AS MOBILE_PHONE,  
 
    t4."officePhone" AS OFFICE_PHONE,  
 
    t4."personalEmailAddress" AS PERSONAL_EMAIL_ADDRESS,

    'asp' AS SOURCE,

    CONCAT('asp.', t2."id",'.',t2."path_param_client_id") AS SOURCE_PK,

    MD5(CONCAT(CAST(t2."id" AS STRING) || '|' || CAST(t2."path_param_client_id" AS STRING) || '|' || CAST('asp' AS STRING))) AS HASH_KEY 

FROM {{ source('aspen_raw', 'clients_clientid_employeeswithssn') }} t2

LEFT JOIN {{ source('aspen_raw', 'clients_clientid_employeeswithssn_name_address') }} t3 ON t3."employeesWithSSN_id" = t2."id"

left JOIN {{ source('aspen_raw', 'clients_clientid_employeeswithssn_personal') }} t4 on t4."employeesWithSSN_id" = t2."id"
