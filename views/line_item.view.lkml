view: line_item {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.LINE_ITEM ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: property_star {
    type: string
    sql: ${TABLE}.property_star ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product.id, deal.id, line_item_property_history.count]
  }
}
