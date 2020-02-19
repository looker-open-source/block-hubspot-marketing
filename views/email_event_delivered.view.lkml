view: email_event_delivered {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_DELIVERED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Delivered Event"
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
    group_label: "Delivered Event"
  }

  dimension: smtp_id {
    type: number
    sql: ${TABLE}.smtp_id ;;
    group_label: "Delivered Event"
  }

  measure: count {
    label: "Delivered Count"
    description: " The recipient's email server has accepted the message and the message has been successfully delivered to the recipient."
    type: count
    drill_fields: [id]
  }

  measure: delivered_pct {
    label: "Delivered Percent"
    description: "Percent of sent emails that were successfully delivered."
    type: number
    sql: ${count}/${email_event_delivered.count} ;;
    drill_fields: [id]
  }
}
