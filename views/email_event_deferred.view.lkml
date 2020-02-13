view: email_event_deferred {
  sql_table_name: spencer-white-tckt87992.hubspot_marketing.EMAIL_EVENT_DEFERRED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attempt {
    type: string
    sql: ${TABLE}.attempt ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
