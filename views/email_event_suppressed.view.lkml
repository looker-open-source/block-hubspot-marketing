view: email_event_suppressed {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_SUPPRESSED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Suppressed Event"
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
    group_label: "Suppressed Event"
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
    group_label: "Suppressed Event"
  }

  dimension: email_campaign_group_id {
    type: number
    sql: ${TABLE}.email_campaign_group_id ;;
    group_label: "Suppressed Event"
  }

  dimension: from {
    type: string
    sql: ${TABLE}.``from`` ;;
    group_label: "Suppressed Event"
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
    group_label: "Suppressed Event"
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
    group_label: "Suppressed Event"
  }

  measure: count {
    label: "Suppressed Count"
    type: count
    drill_fields: [id]
  }
}
