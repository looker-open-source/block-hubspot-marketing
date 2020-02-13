view: engagement_company {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_COMPANY ;;

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company.id, engagement.id]
  }
}
