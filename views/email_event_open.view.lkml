view: email_event_open {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_OPEN ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Opened Event"
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    group_label: "Opened Event"
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
    group_label: "Opened Event"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
    group_label: "Opened Event"
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    group_label: "Opened Event"
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
    group_label: "Opened Event"
  }

  measure: count {
    label: "Opened Count"
    description: "The recipient opened the message."
    type: count
    drill_fields: [id]
  }

  measure: opened_pct {
    label: "Opened Percent"
    description: "Percent of sent emails that were opened."
    type: number
    sql: ${count}/${email_event_sent.count} ;;
    drill_fields: [id]
  }
}
