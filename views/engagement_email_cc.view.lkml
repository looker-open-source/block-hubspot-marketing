view: engagement_email_cc {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_EMAIL_CC ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name, engagement.id]
  }
}
