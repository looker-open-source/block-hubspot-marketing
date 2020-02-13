view: engagement_note {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_NOTE ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
