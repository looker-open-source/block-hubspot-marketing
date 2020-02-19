view: email_subscription_change {
  sql_table_name: @{DATASET_NAME}.EMAIL_SUBSCRIPTION_CHANGE ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: CONCAT(CAST(${recipient} AS STRING), CAST(${timestamp_raw} AS STRING)) ;;
  }

  dimension: caused_by_event_id {
    type: number
    sql: ${TABLE}.caused_by_event_id ;;
    description: "The event ID of the email event that caused this change."
  }

  dimension: change {
    type: string
    sql: ${TABLE}.change ;;
    description: "The change which occurred."
  }

  dimension: change_type {
    type: string
    sql: ${TABLE}.change_type ;;
    description: "The type of change which occurred."
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
    description: "An ID referencing the HubSpot account associated with the change. This will correspond to your account."
  }

  dimension: recipient {
    type: number
    sql: ${TABLE}.recipient ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
    description: "The source of the subscription change."
  }

  dimension: subscription_id {
    type: number
    sql: ${TABLE}.subscription_id ;;
    description: "An ID referencing the email subscription associated with the change."
  }

  dimension_group: timestamp {
    type: time
    datatype: datetime
    sql: PARSE_TIMESTAMP('%c', ${TABLE}.timestamp) ;;
    description: "The timestamp (in milliseconds since epoch) when this change occurred. If 'causedByEvent' is present, this will be absent."
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
