view: email_subscription {
  sql_table_name: @{DATASET_NAME}.EMAIL_SUBSCRIPTION ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
    description: "An ID referencing the HubSpot account associated with the item. This will correspond to your account."
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
