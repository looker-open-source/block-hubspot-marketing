view: email_subscription_change {
  sql_table_name: @{DATASET_NAME}.EMAIL_SUBSCRIPTION_CHANGE ;;

  dimension: caused_by_event_id {
    type: number
    sql: ${TABLE}.caused_by_event_id ;;
  }

  dimension: change {
    type: string
    sql: ${TABLE}.change ;;
  }

  dimension: change_type {
    type: string
    sql: ${TABLE}.change_type ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }

  dimension: recipient {
    type: number
    sql: ${TABLE}.recipient ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: subscription_id {
    type: number
    sql: ${TABLE}.subscription_id ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}