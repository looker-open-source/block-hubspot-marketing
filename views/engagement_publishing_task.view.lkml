view: engagement_publishing_task {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_PUBLISHING_TASK ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: campaign_guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_guid ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: content_id {
    type: number
    sql: ${TABLE}.content_id ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [name, engagement.id]
  }
}
