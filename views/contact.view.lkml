view: contact {
  sql_table_name: @{DATASET_NAME}.CONTACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}.property_address ;;
  }

  dimension: property_annualrevenue {
    type: number
    sql: ${TABLE}.property_annualrevenue ;;
  }

  dimension: property_city {
    type: string
    sql: ${TABLE}.property_city ;;
  }

  dimension: property_company {
    type: string
    sql: ${TABLE}.property_company ;;
  }

  dimension: property_company_size {
    type: number
    sql: ${TABLE}.property_company_size ;;
  }

  dimension: property_country {
    type: string
    sql: ${TABLE}.property_country ;;
  }

  dimension: property_createdate {
    type: string
    sql: ${TABLE}.property_createdate ;;
  }

  dimension: property_currentlyinworkflow {
    type: yesno
    sql: ${TABLE}.property_currentlyinworkflow ;;
  }

  dimension: property_date_of_birth {
    type: string
    sql: ${TABLE}.property_date_of_birth ;;
  }

  dimension: property_degree {
    type: string
    sql: ${TABLE}.property_degree ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}.property_email ;;
    description: "The contact's primary email address."
  }

  dimension: property_engagements_last_meeting_booked_campaign {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_campaign ;;
  }

  dimension: property_engagements_last_meeting_booked_medium {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_medium ;;
  }

  dimension: property_engagements_last_meeting_booked_source {
    type: string
    sql: ${TABLE}.property_engagements_last_meeting_booked_source ;;
  }

  dimension: property_fax {
    type: string
    sql: ${TABLE}.property_fax ;;
  }

  dimension: property_field_of_study {
    type: string
    sql: ${TABLE}.property_field_of_study ;;
  }

  dimension: property_first_deal_created_date {
    type: string
    sql: ${TABLE}.property_first_deal_created_date ;;
  }

  dimension: property_firstname {
    type: string
    sql: ${TABLE}.property_firstname ;;
  }

  dimension: property_gender {
    type: string
    sql: ${TABLE}.property_gender ;;
  }

  dimension: property_graduation_date {
    type: string
    sql: ${TABLE}.property_graduation_date ;;
  }

  dimension: property_hs_all_accessible_team_ids {
    type: string
    sql: ${TABLE}.property_hs_all_accessible_team_ids ;;
  }

  dimension: property_hs_all_owner_ids {
    type: string
    sql: ${TABLE}.property_hs_all_owner_ids ;;
  }

  dimension: property_hs_all_team_ids {
    type: string
    sql: ${TABLE}.property_hs_all_team_ids ;;
  }

  dimension: property_hs_analytics_average_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_average_page_views ;;
  }

  dimension: property_hs_analytics_first_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_referrer ;;
  }

  dimension: property_hs_analytics_first_timestamp {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_timestamp ;;
  }

  dimension: property_hs_analytics_first_touch_converting_campaign {
    type: number
    sql: ${TABLE}.property_hs_analytics_first_touch_converting_campaign ;;
  }

  dimension: property_hs_analytics_first_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_url ;;
  }

  dimension: property_hs_analytics_last_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_referrer ;;
  }

  dimension: property_hs_analytics_last_touch_converting_campaign {
    type: number
    sql: ${TABLE}.property_hs_analytics_last_touch_converting_campaign ;;
  }

  dimension: property_hs_analytics_last_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_url ;;
  }

  dimension: property_hs_analytics_num_event_completions {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_event_completions ;;
  }

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_page_views ;;
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_visits ;;
  }

  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}.property_hs_analytics_revenue ;;
  }

  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}.property_hs_analytics_source ;;
  }

  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_1 ;;
  }

  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_2 ;;
  }

  dimension: property_hs_avatar_filemanager_key {
    type: string
    sql: ${TABLE}.property_hs_avatar_filemanager_key ;;
  }

  dimension: property_hs_buying_role {
    type: string
    sql: ${TABLE}.property_hs_buying_role ;;
  }

  dimension: property_hs_content_membership_notes {
    type: string
    sql: ${TABLE}.property_hs_content_membership_notes ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    type: string
    sql: ${TABLE}.property_hs_content_membership_registration_domain_sent_to ;;
  }

  dimension: property_hs_content_membership_status {
    type: yesno
    sql: ${TABLE}.property_hs_content_membership_status ;;
  }

  dimension: property_hs_conversations_visitor_email {
    type: string
    sql: ${TABLE}.property_hs_conversations_visitor_email ;;
  }

  dimension: property_hs_email_last_email_name {
    type: string
    sql: ${TABLE}.property_hs_email_last_email_name ;;
  }

  dimension: property_hs_email_optout {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout ;;
  }

  dimension: property_hs_email_optout_7720336 {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout_7720336 ;;
  }

  dimension: property_hs_email_quarantined {
    type: yesno
    sql: ${TABLE}.property_hs_email_quarantined ;;
  }

  dimension: property_hs_email_quarantined_reason {
    type: string
    sql: ${TABLE}.property_hs_email_quarantined_reason ;;
  }

  dimension: property_hs_emailconfirmationstatus {
    type: yesno
    sql: ${TABLE}.property_hs_emailconfirmationstatus ;;
  }

  dimension: property_hs_facebookid {
    type: string
    sql: ${TABLE}.property_hs_facebookid ;;
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}.property_hs_feedback_last_nps_follow_up ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    type: string
    sql: ${TABLE}.property_hs_feedback_last_nps_rating ;;
  }

  dimension: property_hs_google_click_id {
    type: string
    sql: ${TABLE}.property_hs_google_click_id ;;
  }

  dimension: property_hs_googleplusid {
    type: string
    sql: ${TABLE}.property_hs_googleplusid ;;
  }

  dimension: property_hs_ip_timezone {
    type: string
    sql: ${TABLE}.property_hs_ip_timezone ;;
  }

  dimension: property_hs_language {
    type: string
    sql: ${TABLE}.property_hs_language ;;
  }

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}.property_hs_lead_status ;;
  }

  dimension: property_hs_legal_basis {
    type: string
    sql: ${TABLE}.property_hs_legal_basis ;;
  }

  dimension: property_hs_lifecyclestage_lead_date {
    type: string
    sql: ${TABLE}.property_hs_lifecyclestage_lead_date ;;
  }

  dimension: property_hs_lifecyclestage_opportunity_date {
    type: string
    sql: ${TABLE}.property_hs_lifecyclestage_opportunity_date ;;
  }

  dimension: property_hs_linkedinid {
    type: string
    sql: ${TABLE}.property_hs_linkedinid ;;
  }

  dimension: property_hs_marketable_reason_id {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_id ;;
  }

  dimension: property_hs_marketable_reason_type {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_type ;;
  }

  dimension: property_hs_marketable_status {
    type: string
    sql: ${TABLE}.property_hs_marketable_status ;;
  }

  dimension: property_hs_marketable_until_renewal {
    type: string
    sql: ${TABLE}.property_hs_marketable_until_renewal ;;
  }

  dimension: property_hs_merged_object_ids {
    type: string
    sql: ${TABLE}.property_hs_merged_object_ids ;;
  }

  dimension: property_hs_persona {
    type: string
    sql: ${TABLE}.property_hs_persona ;;
  }

  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}.property_hs_predictivecontactscore_v_2 ;;
  }

  dimension: property_hs_predictivecontactscorebucket {
    type: string
    sql: ${TABLE}.property_hs_predictivecontactscorebucket ;;
  }

  dimension: property_hs_predictivescoringtier {
    type: string
    sql: ${TABLE}.property_hs_predictivescoringtier ;;
  }

  dimension: property_hs_social_facebook_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_facebook_clicks ;;
  }

  dimension: property_hs_social_google_plus_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_google_plus_clicks ;;
  }

  dimension: property_hs_social_linkedin_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_linkedin_clicks ;;
  }

  dimension: property_hs_social_num_broadcast_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_num_broadcast_clicks ;;
  }

  dimension: property_hs_social_twitter_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_twitter_clicks ;;
  }

  dimension: property_hs_twitterid {
    type: string
    sql: ${TABLE}.property_hs_twitterid ;;
  }

  dimension: property_hubspot_owner_assigneddate {
    type: string
    sql: ${TABLE}.property_hubspot_owner_assigneddate ;;
  }

  dimension: property_hubspot_owner_id {
    type: number
    sql: ${TABLE}.property_hubspot_owner_id ;;
  }

  dimension: property_hubspot_team_id {
    type: number
    sql: ${TABLE}.property_hubspot_team_id ;;
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}.property_industry ;;
  }

  dimension: property_ip_city {
    type: string
    sql: ${TABLE}.property_ip_city ;;
  }

  dimension: property_ip_country {
    type: string
    sql: ${TABLE}.property_ip_country ;;
  }

  dimension: property_ip_country_code {
    type: number
    sql: ${TABLE}.property_ip_country_code ;;
  }

  dimension: property_ip_latlon {
    type: number
    sql: ${TABLE}.property_ip_latlon ;;
  }

  dimension: property_ip_state {
    type: string
    sql: ${TABLE}.property_ip_state ;;
  }

  dimension: property_ip_state_code {
    type: number
    sql: ${TABLE}.property_ip_state_code ;;
  }

  dimension: property_ip_zipcode {
    type: string
    sql: ${TABLE}.property_ip_zipcode ;;
  }

  dimension: property_job_function {
    type: string
    sql: ${TABLE}.property_job_function ;;
  }

  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}.property_jobtitle ;;
  }

  dimension: property_lastmodifieddate {
    type: string
    sql: ${TABLE}.property_lastmodifieddate ;;
  }

  dimension: property_lastname {
    type: string
    sql: ${TABLE}.property_lastname ;;
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}.property_lifecyclestage ;;
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}.property_linkedinbio ;;
  }

  dimension: property_marital_status {
    type: string
    sql: ${TABLE}.property_marital_status ;;
  }

  dimension: property_message {
    type: string
    sql: ${TABLE}.property_message ;;
  }

  dimension: property_military_status {
    type: string
    sql: ${TABLE}.property_military_status ;;
  }

  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}.property_mobilephone ;;
  }

  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}.property_num_associated_deals ;;
  }

  dimension: property_numemployees {
    type: number
    sql: ${TABLE}.property_numemployees ;;
  }

  dimension: property_owneremail {
    type: string
    sql: ${TABLE}.property_owneremail ;;
  }

  dimension: property_ownername {
    type: string
    sql: ${TABLE}.property_ownername ;;
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}.property_phone ;;
  }

  dimension: property_photo {
    type: string
    sql: ${TABLE}.property_photo ;;
  }

  dimension: property_relationship_status {
    type: string
    sql: ${TABLE}.property_relationship_status ;;
  }

  dimension: property_salutation {
    type: string
    sql: ${TABLE}.property_salutation ;;
  }

  dimension: property_school {
    type: string
    sql: ${TABLE}.property_school ;;
  }

  dimension: property_seniority {
    type: string
    sql: ${TABLE}.property_seniority ;;
  }

  dimension: property_start_date {
    type: string
    sql: ${TABLE}.property_start_date ;;
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}.property_state ;;
  }

  dimension: property_twitterbio {
    type: string
    sql: ${TABLE}.property_twitterbio ;;
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}.property_twitterhandle ;;
  }

  dimension: property_twitterprofilephoto {
    type: string
    sql: ${TABLE}.property_twitterprofilephoto ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}.property_website ;;
  }

  dimension: property_work_email {
    type: string
    sql: ${TABLE}.property_work_email ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}.property_zip ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_drills*]
  }

  measure: count_last_touch {
    type: sum
    sql: ${property_hs_analytics_last_touch_converting_campaign} ;;
    drill_fields: [contact_drills*]
  }

  set: contact_drills {
    fields: [id, property_firstname, property_lastname, property_hs_email_last_email_name, property_ownername]
  }
}
