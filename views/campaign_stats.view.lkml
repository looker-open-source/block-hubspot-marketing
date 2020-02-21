# If necessary, uncomment the line below to include explore_source.
# include: "hubspot-marketing.model.lkml"

view: campaign_stats {
  derived_table: {
    explore_source: contact {
      column: created { field: email_event.created_raw }
      column: campaign_id { field: email_campaign.id }
      column: delivered_pct { field: email_event_delivered.delivered_pct }
      column: opened_pct { field: email_event_open.opened_pct }
      column: conversion_rate { field: contact_form_submission.conversion_rate }
      filters: {
        field: email_event.created_date
        value: "1 years"
      }
    }
    sql_trigger_value: SELECT CURRENT_DATE() ;;
  }
  dimension: id {
    type: string
    sql: CAST(${campaign_id} AS STRING) || ' ' || CAST(${created_date} AS STRING) ;;
    primary_key: yes
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension_group: created {
    description: "The timestamp (in milliseconds since epoch) when this event was created."
    type: time
    timeframes: [date, month, raw]
  }
  dimension: delivered_pct {
    label: "Email Event Attributes Delivered Percent"
    description: "Percent of sent emails that were successfully delivered."
    type: number
    hidden:  yes
  }
  dimension: opened_pct {
    label: "Email Event Attributes Opened Percent"
    description: "Percent of sent emails that were opened."
    type: number
    hidden:  yes
  }
  dimension: conversion_rate {
    description: "Percent of sent emails that lead to a conversion."
    type: number
    hidden:  yes
  }

  measure: average_delivery_rate {
    type: average
    sql: ${TABLE}.delivered_pct ;;
    value_format_name: percent_1
  }

  measure: average_open_rate {
    type: average
    sql: ${TABLE}.opened_pct ;;
    value_format_name: percent_1
  }

  measure: average_conversion_rate {
    type: average
    sql: ${TABLE}.conversion_rate ;;
    value_format_name: percent_1
  }
}
