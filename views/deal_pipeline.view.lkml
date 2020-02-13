view: deal_pipeline {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL_PIPELINE ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: pipeline_id {
    type: number
    sql: ${TABLE}.pipeline_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
