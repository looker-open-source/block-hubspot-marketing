view: email_event {
  sql_table_name: spencer-white-tckt87992.hubspot_marketing.EMAIL_EVENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: caused_by_created {
    type: string
    sql: ${TABLE}.caused_by_created ;;
  }

  dimension: caused_by_id {
    type: number
    sql: ${TABLE}.caused_by_id ;;
  }

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: email_campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.email_campaign_id ;;
  }

  dimension: obsoleted_by_created {
    type: string
    sql: ${TABLE}.obsoleted_by_created ;;
  }

  dimension: obsoleted_by_id {
    type: number
    sql: ${TABLE}.obsoleted_by_id ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }

  dimension: recipient {
    type: number
    sql: ${TABLE}.recipient ;;
  }

  dimension: sent_by_created {
    type: string
    sql: ${TABLE}.sent_by_created ;;
  }

  dimension: sent_by_id {
    type: number
    sql: ${TABLE}.sent_by_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, app_name, email_campaign.app_name, email_campaign.name, email_campaign.id]
  }
}
