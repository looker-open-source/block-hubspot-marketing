view: line_item_property_history {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.LINE_ITEM_PROPERTY_HISTORY ;;

  dimension: line_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: name {
    type: number
    sql: ${TABLE}.name ;;
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
    drill_fields: [name, line_item.id]
  }
}
