view: email_event_bounce {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_BOUNCE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Bounce Event"
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    group_label: "Bounce Event"
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
    group_label: "Bounce Event"
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
    group_label: "Bounce Event"
  }

  measure: count {
    label: "Bounce Count"
    description: "The recipient's email server couldn't or wouldn't accept the message, and no further attempts will be made to deliver the message."
    type: count
    drill_fields: [id]
  }
}
