view: email_event_status_change {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_STATUS_CHANGE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bounced {
    type: number
    sql: ${TABLE}.bounced ;;
  }

  dimension: portal_subscription_status {
    type: string
    sql: ${TABLE}.portal_subscription_status ;;
  }

  dimension: requested_by {
    type: string
    sql: ${TABLE}.requested_by ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: subscriptions {
    type: number
    sql: ${TABLE}.subscriptions ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}