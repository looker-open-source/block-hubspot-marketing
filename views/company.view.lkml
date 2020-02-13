view: company {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.COMPANY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }

  dimension: property_star {
    type: string
    sql: ${TABLE}.property_star ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_property_history.count, deal_company.count, engagement_company.count]
  }
}
