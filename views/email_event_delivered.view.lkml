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
    description: "The full response from the recipient's email server."
    group_label: "Delivered Event"
  }

  dimension: smtp_id {
    type: number
    sql: ${TABLE}.smtp_id ;;
    description: "An ID attached to the message by HubSpot."
    group_label: "Delivered Event"
  }

  measure: count {
    label: "Delivered Count"
    description: " The recipient's email server has accepted the message and the message has been successfully delivered to the recipient."
    type: count
    drill_fields: [id]
  }
}
