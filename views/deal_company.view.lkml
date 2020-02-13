view: deal_company {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL_COMPANY ;;

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company.id, deal.id]
  }
}
