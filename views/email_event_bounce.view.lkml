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
    description: "The best-guess of the type of bounce encountered. If an appropriate category couldn't be determined, this property is omitted."
    group_label: "Bounce Event"
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
    description: "The full response from the recipient's email server."
    group_label: "Bounce Event"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    description: "The status code returned from the recipient's email server."
    group_label: "Bounce Event"
  }

  measure: count {
    label: "Bounce Count"
    description: "The recipient's email server couldn't or wouldn't accept the message, and no further attempts will be made to deliver the message."
    type: count
    drill_fields: [id]
  }
}
