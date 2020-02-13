view: deal_pipeline_stage {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL_PIPELINE_STAGE ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: closed_won {
    type: number
    sql: ${TABLE}.closed_won ;;
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

  dimension: probability {
    type: string
    sql: ${TABLE}.probability ;;
  }

  dimension: stage_id {
    type: number
    sql: ${TABLE}.stage_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
