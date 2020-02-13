view: engagement_meeting {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_MEETING ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: created_from_link_id {
    type: number
    sql: ${TABLE}.created_from_link_id ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: external_url {
    type: string
    sql: ${TABLE}.external_url ;;
  }

  dimension: pre_meeting_prospect_reminders {
    type: string
    sql: ${TABLE}.pre_meeting_prospect_reminders ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: web_conference_meeting_id {
    type: number
    sql: ${TABLE}.web_conference_meeting_id ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
