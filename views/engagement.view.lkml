view: engagement {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activityType ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.last_updated ;;
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

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
      engagement_contact.count,
      engagement_task.count,
      engagement_meeting.count,
      engagement_call.count,
      engagement_company.count,
      engagement_email_cc.count,
      engagement_publishing_task.count,
      engagement_email_bcc.count,
      engagement_email.count,
      engagement_deal.count,
      engagement_note.count,
      engagement_email_to.count
    ]
  }
}
