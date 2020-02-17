view: email_event_forward {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_FORWARD ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Forwarded Event"
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    group_label: "Forwarded Event"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
    group_label: "Forwarded Event"
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    group_label: "Forwarded Event"
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
    group_label: "Forwarded Event"
  }

  measure: count {
    label: "Forwarded Count"
    type: count
    drill_fields: [id]
  }
}
