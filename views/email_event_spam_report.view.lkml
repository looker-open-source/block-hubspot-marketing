view: email_event_spam_report {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_SPAM_REPORT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}