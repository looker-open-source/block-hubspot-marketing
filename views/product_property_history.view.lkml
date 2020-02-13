view: product_property_history {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.PRODUCT_PROPERTY_HISTORY ;;

  dimension: name {
    type: number
    sql: ${TABLE}.name ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
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
    drill_fields: [name, product.id]
  }
}
