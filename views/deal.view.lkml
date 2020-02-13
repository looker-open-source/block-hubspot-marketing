view: deal {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: deal_pipeline_id {
    type: number
    sql: ${TABLE}.deal_pipeline_id ;;
  }

  dimension: deal_pipeline_stage_id {
    type: number
    sql: ${TABLE}.deal_pipeline_stage_id ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: owner_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.owner_id ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      owner.owner_id,
      owner.last_name,
      owner.first_name,
      deal_property_history.count,
      deal_company.count,
      deal_contact.count,
      engagement_deal.count,
      line_item.count
    ]
  }
}
