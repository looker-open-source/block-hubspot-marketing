view: email_event_spam_report {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_SPAM_REPORT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Spam Report Event"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
    group_label: "Spam Report Event"
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
    group_label: "Spam Report Event"
  }

  measure: count {
    label: "Reported as Spam Count"
    description: "The recipient flagged the message as spam."
    type: count
    drill_fields: [id]
  }
}
