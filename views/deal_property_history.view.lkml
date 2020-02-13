view: deal_property_history {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL_PROPERTY_HISTORY ;;

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  dimension: name {
    type: number
    sql: ${TABLE}.name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.Source_id ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [name, deal.id]
  }
}
