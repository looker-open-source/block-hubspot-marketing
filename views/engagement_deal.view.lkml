view: engagement_deal {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_DEAL ;;

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id, deal.id]
  }
}
