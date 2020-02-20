view: contact {
  sql_table_name: @{DATASET_NAME}.CONTACT ;;
  drill_fields: [id]

  dimension: id { primary_key: yes type: number sql: ${TABLE}.id ;; }

  dimension: property_address {
    type: string
    sql: ${TABLE}.property_address ;;
    description: "the contact's street address, including apartment or unit #"
  }

  dimension: property_annualrevenue {
    type: number
    sql: ${TABLE}.property_annualrevenue ;;
    description: "annual company revenue"
  }

  dimension: property_city {
    type: string
    sql: ${TABLE}.property_city ;;
    description: "a contact's city of residence"
  }

  dimension: property_company {
    type: string
    sql: ${TABLE}.property_company ;;
    description: "the name of the contact's company. This is separate from the Name property of the contact's associated company and can be set independently. Learn more about the difference between Company name and Associated company."
  }

  dimension: property_company_size {
    type: number
    sql: ${TABLE}.property_company_size ;;
    description: "the number of company employees"
  }

  dimension: property_country {
    type: string
    sql: ${TABLE}.property_country ;;
    description: "the contact's country of residence. This might be set via import, form, or integration"
  }

  dimension: property_createdate {
    type: string
    sql: ${TABLE}.property_createdate ;;
    description: "the date that a contact was created in your HubSpot account"
  }

  dimension: property_currentlyinworkflow {
    type: yesno
    sql: ${TABLE}.property_currentlyinworkflow ;;
    description: "indicates if the contact is currently enrolled in any workflow."
  }

  dimension: property_date_of_birth {
    type: string
    sql: ${TABLE}.property_date_of_birth ;;
    description: "the date of birth as provided through a lead ad form, set by the ads tool"
  }

  dimension: property_degree {
    type: string
    sql: ${TABLE}.property_degree ;;
    description: "the degree as provided through a lead ad form, set by the ads tool"
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}.property_email ;;
    description: "the contact's primary email address"
  }

  dimension: property_engagements_last_meeting_booked_campaign {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_campaign ;;
    description: "this UTM parameter shows which marketing campaign (e.g. a specific email) referred the contact to the meetings tool for their most recent booking. This property is only populated when you add tracking parameters to your meeting link."
  }

  dimension: property_engagements_last_meeting_booked_medium {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_medium ;;
    description: "this UTM parameter shows which channel (e.g. email) referred the contact to the meetings tool for their most recent booking. This property is only populated when you add tracking parameters to your meeting link."
  }

  dimension: property_engagements_last_meeting_booked_source {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_source ;;
    description: "this UTM parameter shows which site (e.g. Twitter) referred the contact to the meetings tool for their most recent booking. This property is only populated when you add tracking parameters to your meeting link."
  }

  dimension: property_fax {
    type: string
    sql: ${TABLE}.property_fax ;;
    description: "the contact's primary fax number"
  }

  dimension: property_field_of_study {
    type: string
    sql: ${TABLE}.property_field_of_study ;;
    description: "the field of study as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_first_deal_created_date {
    type: string
    sql: ${TABLE}.property_first_deal_created_date ;;
    description: "the create date of the first deal a contact is associated to."
  }

  dimension: property_firstname {
    type: string
    sql: ${TABLE}.property_firstname ;;
    description: "the contact's first name."
  }

  dimension: property_gender {
    type: string
    sql: ${TABLE}.property_gender ;;
    description: "the gender as provided through a lead ad form, set by the ads tool"
  }

  dimension: property_graduation_date {
    type: string
    sql: ${TABLE}.property_graduation_date ;;
    description: "the graduation date of education as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_hs_all_accessible_team_ids {
    type: string
    sql: ${TABLE}.property_hs_all_accessible_team_ids ;;
    description: ""
  }

  dimension: property_hs_all_owner_ids {
    type: string
    sql: ${TABLE}.property_hs_all_owner_ids ;;
    description: ""
  }

  dimension: property_hs_all_team_ids {
    type: string
    sql: ${TABLE}.property_hs_all_team_ids ;;
    description: ""
  }

  dimension: property_hs_analytics_average_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_average_page_views ;;
    description: "the average number of pages the contact sees. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_first_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_referrer ;;
    description: "the first website that referred the contact to your website. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_first_timestamp {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_timestamp ;;
    description: "the time and date when the contact first interacted with your business (website visit, form submission, manual contact creation or import). This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_first_touch_converting_campaign {
    type: number
    sql: ${TABLE}.property_hs_analytics_first_touch_converting_campaign ;;
    description: " the name based on the campaign ID responsible for the first touch creation of this contact. When using this property in other HubSpot tools (e.g., filters, lists), use the campaign ID instead."
  }

  dimension: property_hs_analytics_first_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_url ;;
    description: "the first page the contact saw on your website. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_last_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_referrer ;;
    description: "the last website that referred the contact to your website. This is automatically set by HubSpot for each contact. This analytics property looks at the last page viewed, so this site can be internal or external."
  }

  dimension: property_hs_analytics_last_touch_converting_campaign {
    type: number
    sql: ${TABLE}.property_hs_analytics_last_touch_converting_campaign ;;
    description: "the name based on the campaign ID responsible for the last touch creation of this contact. When using this property in other HubSpot tools (e.g., filters, lists), use the campaign ID instead."
  }

  dimension: property_hs_analytics_last_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_url ;;
    description: "the last page the contact saw on your website. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_num_event_completions {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_event_completions ;;
    description: "the sum of all events the contact has experienced. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_page_views ;;
    description: "the sum of all pages the contact has seen on your website. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_visits ;;
    description: ""
  }

  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}.property_hs_analytics_revenue ;;
    description: "event revenue can be set on a contact using HubSpot's events tool."
  }

  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}.property_hs_analytics_source ;;
    description: "the first known source through which the contact found your website. This is automatically set by HubSpot. The property options are not editable, but an individual's Original source value can be manually changed to any of the options."
  }

  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_1 ;;
    description: "additional information about the source through which the contact first found your website; view some example values. This is automatically set by HubSpot and cannot be manually changed for a contact. Formerly labeled as Original source data 1."
  }

  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_2 ;;
    description: "additional information about the source through which the contact first found your website; view some example values. This is automatically set by HubSpot and cannot be changed for a contact. Formerly labeled as Original source data 2."
  }

  dimension: property_hs_avatar_filemanager_key {
    type: string
    sql: ${TABLE}.property_hs_avatar_filemanager_key ;;
    description: ""
  }

  dimension: property_hs_buying_role {
    type: string
    sql: ${TABLE}.property_hs_buying_role ;;
    description: ""
  }

  dimension: property_hs_content_membership_notes {
    type: string
    sql: ${TABLE}.property_hs_content_membership_notes ;;
    description: "the notes relating to the contact's content membership."
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    type: string
    sql: ${TABLE}.property_hs_content_membership_registration_domain_sent_to ;;
    description: "the domain to which the registration invitation email for content membership was sent to."
  }

  dimension: property_hs_content_membership_status {
    type: yesno
    sql: ${TABLE}.property_hs_content_membership_status ;;
    description: "the status of the contact's content membership."
  }

  dimension: property_hs_conversations_visitor_email {
    type: string
    sql: ${TABLE}.property_hs_conversations_visitor_email ;;
    description: ""
  }

  dimension: property_hs_email_last_email_name {
    type: string
    sql: ${TABLE}.property_hs_email_last_email_name ;;
    description: "the name of the last marketing email sent."
  }

  dimension: property_hs_email_optout {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout ;;
    description: "indicates that the current email address has opted out from emails of the specified type."
  }

  dimension: property_hs_email_optout_7720336 {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout_7720336 ;;
    description: ""
  }

  dimension: property_hs_email_quarantined {
    type: yesno
    sql: ${TABLE}.property_hs_email_quarantined ;;
    description: "indicates that the current email address has been quarantined for anti-abuse reasons. HubSpot will not send any marketing emails to quarantined email addresses."
  }

  dimension: property_hs_email_quarantined_reason {
    type: string
    sql: ${TABLE}.property_hs_email_quarantined_reason ;;
    description: ""
  }

  dimension: property_hs_emailconfirmationstatus {
    type: yesno
    sql: ${TABLE}.property_hs_emailconfirmationstatus ;;
    description: "the status of the contact's eligibility to receive email."
  }

  dimension: property_hs_facebookid {
    type: string
    sql: ${TABLE}.property_hs_facebookid ;;
    description: ""
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}.property_hs_feedback_last_nps_follow_up ;;
    description: ""
  }

  dimension: property_hs_feedback_last_nps_rating {
    type: string
    sql: ${TABLE}.property_hs_feedback_last_nps_rating ;;
    description: "the last NPS survey rating that this contact gave."
  }

  dimension: property_hs_google_click_id {
    type: string
    sql: ${TABLE}.property_hs_google_click_id ;;
    description: ""
  }

  dimension: property_hs_googleplusid {
    type: string
    sql: ${TABLE}.property_hs_googleplusid ;;
    description: ""
  }

  dimension: property_hs_ip_timezone {
    type: string
    sql: ${TABLE}.property_hs_ip_timezone ;;
    description: "The timezone reported by a contact's IP address. This is automatically set by HubSpot and can be used for segmentation and reporting. This property is used to determine a contact's time zone for the time zone send email feature. "
  }

  dimension: property_hs_language {
    type: string
    sql: ${TABLE}.property_hs_language ;;
    description: "the contact's preferred language for communications. This might be set via import, form, or integration."
  }

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}.property_hs_lead_status ;;
    description: "a contact and company property that indicates where a contact or company is within a buying cycle as a lead. Learn about the difference between Lead status and Lifecycle stage. "
  }

  dimension: property_hs_legal_basis {
    type: string
    sql: ${TABLE}.property_hs_legal_basis ;;
    description: ""
  }

  dimension: property_hs_lifecyclestage_lead_date {
    type: string
    sql: ${TABLE}.property_hs_lifecyclestage_lead_date ;;
    description: " the date that a contact's lifecycle stage changed to Lead. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_lifecyclestage_opportunity_date {
    type: string
    sql: ${TABLE}.property_hs_lifecyclestage_opportunity_date ;;
    description: "the date that a contact's lifecycle stage changed to Opportunity. This is automatically set by HubSpot for each contact."
  }

  dimension: property_hs_linkedinid {
    type: string
    sql: ${TABLE}.property_hs_linkedinid ;;
    description: ""
  }

  dimension: property_hs_marketable_reason_id {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_id ;;
    description: ""
  }

  dimension: property_hs_marketable_reason_type {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_type ;;
    description: ""
  }

  dimension: property_hs_marketable_status {
    type: string
    sql: ${TABLE}.property_hs_marketable_status ;;
    description: ""
  }

  dimension: property_hs_marketable_until_renewal {
    type: string
    sql: ${TABLE}.property_hs_marketable_until_renewal ;;
    description: ""
  }

  dimension: property_hs_merged_object_ids {
    type: string
    sql: ${TABLE}.property_hs_merged_object_ids ;;
    description: ""
  }

  dimension: property_hs_persona {
    type: string
    sql: ${TABLE}.property_hs_persona ;;
    description: "the contact's persona."
  }

  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}.property_hs_predictivecontactscore_v_2 ;;
    description: "the probability that a contact will become a customer within the next 90 days. This score is based on demographic information in standard contact properties and interactions logged in the contact timeline such as tracked email clicks and meetings booked."
  }

  dimension: property_hs_predictivecontactscorebucket {
    type: string
    sql: ${TABLE}.property_hs_predictivecontactscorebucket ;;
    description: ""
  }

  dimension: property_hs_predictivescoringtier {
    type: string
    sql: ${TABLE}.property_hs_predictivescoringtier ;;
    description: "a ranking system of contacts evenly assigned into four tiers. Contacts in tier one are more likely to become customers than contacts in tier four."
  }

  dimension: property_hs_social_facebook_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_facebook_clicks ;;
    description: ""
  }

  dimension: property_hs_social_google_plus_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_google_plus_clicks ;;
    description: ""
  }

  dimension: property_hs_social_linkedin_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_linkedin_clicks ;;
    description: ""
  }

  dimension: property_hs_social_num_broadcast_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_num_broadcast_clicks ;;
    description: ""
  }

  dimension: property_hs_social_twitter_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_twitter_clicks ;;
    description: ""
  }

  dimension: property_hs_twitterid {
    type: string
    sql: ${TABLE}.property_hs_twitterid ;;
    description: ""
  }

  dimension: property_hubspot_owner_assigneddate {
    type: string
    sql: ${TABLE}.property_hubspot_owner_assigneddate ;;
    description: "the most recent date that a contact owner was assigned to a contact. This is set automatically by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_hubspot_owner_id {
    type: number
    sql: ${TABLE}.property_hubspot_owner_id ;;
    description: "the owner of a contact. This can be any HubSpot user or Salesforce integration user and can be set manually or via Workflows. You can assign additional users to a contact record by creating a custom HubSpot user field type property."
  }

  dimension: property_hubspot_team_id {
    type: number
    sql: ${TABLE}.property_hubspot_team_id ;;
    description: "the team assigned to the contact owner for the contact."
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}.property_industry ;;
    description: " the contact's industry."
  }

  dimension: property_ip_city {
    type: string
    sql: ${TABLE}.property_ip_city ;;
    description: "the city reported by the contact's IP address when they fill out a form. This is automatically set by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_ip_country {
    type: string
    sql: ${TABLE}.property_ip_country ;;
    description: "the country reported by the contact's IP address when they fill out a form. This is automatically set by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_ip_country_code {
    type: number
    sql: ${TABLE}.property_ip_country_code ;;
    description: " the country code reported by a contact's IP address. This is automatically set by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_ip_latlon {
    type: number
    sql: ${TABLE}.property_ip_latlon ;;
    description: ""
  }

  dimension: property_ip_state {
    type: string
    sql: ${TABLE}.property_ip_state ;;
    description: "the state or region reported by a contact's IP address. This is automatically set by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_ip_state_code {
    type: number
    sql: ${TABLE}.property_ip_state_code ;;
    description: "the state code or region code reported by a contact's IP address. This is automatically set by HubSpot and can be used for segmentation and reporting."
  }

  dimension: property_ip_zipcode {
    type: string
    sql: ${TABLE}.property_ip_zipcode ;;
    description: ""
  }

  dimension: property_job_function {
    type: string
    sql: ${TABLE}.property_job_function ;;
    description: "the job function as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}.property_jobtitle ;;
    description: "the contact's job title."
  }

  dimension: property_lastmodifieddate {
    type: string
    sql: ${TABLE}.property_lastmodifieddate ;;
    description: "the last date and time that a property related to this contact was modified."
  }

  dimension: property_lastname {
    type: string
    sql: ${TABLE}.property_lastname ;;
    description: "the contact's last name."
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}.property_lifecyclestage ;;
    description: "a property used to indicate at what point the contact is within the marketing/sales process. It can be set through imports, forms, workflows, or manually on a per contact basis."
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}.property_linkedinbio ;;
    description: ""
  }

  dimension: property_marital_status {
    type: string
    sql: ${TABLE}.property_marital_status ;;
    description: "the marital status as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_message {
    type: string
    sql: ${TABLE}.property_message ;;
    description: "a default property to be used for any message or comments a contact may want to leave on a form."
  }

  dimension: property_military_status {
    type: string
    sql: ${TABLE}.property_military_status ;;
    description: "the military status as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}.property_mobilephone ;;
    description: "the contact's mobile phone number."
  }

  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}.property_num_associated_deals ;;
    description: "the total number of all associated deals."
  }

  dimension: property_numemployees {
    type: number
    sql: ${TABLE}.property_numemployees ;;
    description: "the number of company employees."
  }

  dimension: property_owneremail {
    type: string
    sql: ${TABLE}.property_owneremail ;;
    description: ""
  }

  dimension: property_ownername {
    type: string
    sql: ${TABLE}.property_ownername ;;
    description: ""
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}.property_phone ;;
    description: "the contact's primary phone number."
  }

  dimension: property_photo {
    type: string
    sql: ${TABLE}.property_photo ;;
    description: ""
  }

  dimension: property_relationship_status {
    type: string
    sql: ${TABLE}.property_relationship_status ;;
    description: "the relationship status as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_salutation {
    type: string
    sql: ${TABLE}.property_salutation ;;
    description: "the title used to address the contact."
  }

  dimension: property_school {
    type: string
    sql: ${TABLE}.property_school ;;
    description: "the school as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_seniority {
    type: string
    sql: ${TABLE}.property_seniority ;;
    description: "the seniority in the company as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_start_date {
    type: string
    sql: ${TABLE}.property_start_date ;;
    description: "the start date of education as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}.property_state ;;
    description: "the contact's state of residence."
  }

  dimension: property_twitterbio {
    type: string
    sql: ${TABLE}.property_twitterbio ;;
    description: ""
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}.property_twitterhandle ;;
    description: ""
  }

  dimension: property_twitterprofilephoto {
    type: string
    sql: ${TABLE}.property_twitterprofilephoto ;;
    description: ""
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}.property_website ;;
    description: "the contact's company website."
  }

  dimension: property_work_email {
    type: string
    sql: ${TABLE}.property_work_email ;;
    description: "the work email as provided through a lead ad form, set by the ads tool."
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}.property_zip ;;
    description: "the contact's zip code."
  }

  measure: count {
    type: count
    drill_fields: [id, property_firstname, property_lastname, property_hs_email_last_email_name, property_ownername]
  }
}
