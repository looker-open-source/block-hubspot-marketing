view: email_subscription {
  sql_table_name: spencer-white-tckt87992.hubspot_marketing.EMAIL_SUBSCRIPTION ;;
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
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
