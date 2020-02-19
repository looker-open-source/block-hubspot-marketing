view: email_event_deferred {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_DEFERRED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Deferred Event"
  }

  dimension: attempt {
    type: string
    sql: ${TABLE}.attempt ;;
    description: "The delivery attempt number."
    group_label: "Deferred Event"
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
    description: "The full response from the recipient's email server."
    group_label: "Deferred Event"
  }

  measure: count {
    label: "Deferred Count"
    description: "The recipient’s email server has temporarily rejected message, and subsequent attempts will be made to deliver the message."
    type: count
    drill_fields: [id]
  }
}
