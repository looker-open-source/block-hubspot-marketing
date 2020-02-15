view: email_event_sent {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_SENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.``from`` ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}