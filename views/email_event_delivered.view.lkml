view: email_event_delivered {
  sql_table_name: spencer-white-tckt87992.hubspot_marketing.EMAIL_EVENT_DELIVERED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: smtp_id {
    type: number
    sql: ${TABLE}.smtp_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
