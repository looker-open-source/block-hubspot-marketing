view: email_event_bounce {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_BOUNCE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}