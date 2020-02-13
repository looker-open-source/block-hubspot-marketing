view: engagement_task {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_TASK ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: for_object_type {
    type: string
    sql: ${TABLE}.for_object_type ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: task_type {
    type: string
    sql: ${TABLE}.task_type ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
