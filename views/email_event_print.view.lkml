view: email_event_print {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_PRINT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Printed Event"
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    group_label: "Printed Event"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
    group_label: "Printed Event"
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    group_label: "Printed Event"
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
    group_label: "Printed Event"
  }

  measure: count {
    label: "Printed Count"
    type: count
    drill_fields: [id]
  }
}
