
view: campaign_stats {
  derived_table: {
    explore_source: contact {
      column: created { field: email_event.created_raw }
      column: campaign_id { field: email_campaign.id }
      column: opened_count { field: email_event_open.count }
      column: delivered_count { field: email_event_delivered.count }
      column: sent_count { field: email_event_sent.count }
      column: conversions { field: contact_form_submission.conversions }
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
    hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension_group: created {
    description: "The timestamp (in milliseconds since epoch) when this event was created."
    type: time
    hidden: yes
    timeframes: [date, month, raw]
  }
  dimension: sent_count {
    hidden: yes
  }

  dimension: delivered_count {
    hidden: yes
  }

  dimension: opened_count {
    hidden: yes
  }

  dimension: conversions {
    hidden: yes
  }

  measure: average_numner_of_sent_emails {
    type: average
    description: "Average number of sent emails for all campaigns."
    sql: (${sent_count}) ;;
    value_format_name: decimal_0
  }

  measure: average_delivery_rate {
    type: number
    description: "Percent of sent emails that were successfully delivered."
    sql: SUM(${delivered_count})/SUM(${sent_count}) ;;
    value_format_name: percent_1
  }

  measure: average_open_rate {
    type: number
    description: "Percent of sent emails that were opened."
    sql: SUM(${opened_count})/SUM(${sent_count})  ;;
    value_format_name: percent_1
  }

  measure: average_conversion_rate {
    description: "Percent of sent emails that lead to a conversion."
    type: number
    sql: SUM(${conversions})/SUM(${sent_count}) ;;
    value_format_name: percent_1
  }
}
