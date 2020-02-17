view: email_event_status_change {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_STATUS_CHANGE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Status Change Event"
  }

  dimension: bounced {
    type: number
    sql: ${TABLE}.bounced ;;
    group_label: "Status Change Event"
  }

  dimension: portal_subscription_status {
    type: string
    sql: ${TABLE}.portal_subscription_status ;;
    group_label: "Status Change Event"
  }

  dimension: requested_by {
    type: string
    sql: ${TABLE}.requested_by ;;
    group_label: "Status Change Event"
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
    group_label: "Status Change Event"
  }

  dimension: subscriptions {
    type: number
    sql: ${TABLE}.subscriptions ;;
    group_label: "Status Change Event"
  }

  measure: count {
    label: "Status Changed Count"
    description: "The recipient changed their email subscriptions in some way."
    type: count
    drill_fields: [id]
  }
}
