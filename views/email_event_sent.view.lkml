view: email_event_sent {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_SENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Sent Event"
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
    group_label: "Sent Event"
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
    group_label: "Sent Event"
  }

  dimension: from {
    type: string
    sql: ${TABLE}.``from`` ;;
    group_label: "Sent Event"
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
    group_label: "Sent Event"
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
    group_label: "Sent Event"
  }

  measure: count {
    label: "Sent Count"
    description: "The message was sent to and received by our delivery provider, which has queued it for further handling."
    type: count
    drill_fields: [id]
  }
}
