view: email_event_click {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_CLICK ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Click Event"
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
    group_label: "Click Event"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
    group_label: "Click Event"
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    group_label: "Click Event"
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
    group_label: "Click Event"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
    group_label: "Click Event"
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
    group_label: "Click Event"
  }

  measure: count {
    label: "Click Count"
    description: "The recipient clicked on a link within the message."
    type: count
    drill_fields: [id]
  }
}
