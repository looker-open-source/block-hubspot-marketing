view: email_event_suppressed {
  sql_table_name: spencer-white-tckt87992.hubspot_marketing.EMAIL_EVENT_SUPPRESSED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }

  dimension: email_campaign_group_id {
    type: number
    sql: ${TABLE}.email_campaign_group_id ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.``from`` ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}