view: engagement_call {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_CALL ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: callee_object_id {
    type: number
    sql: ${TABLE}.callee_object_id ;;
  }

  dimension: callee_object_type {
    type: string
    sql: ${TABLE}.callee_object_type ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension: duration_milliseconds {
    type: number
    sql: ${TABLE}.duration_milliseconds ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: external_account_id {
    type: number
    sql: ${TABLE}.external_account_id ;;
  }

  dimension: external_id {
    type: number
    sql: ${TABLE}.external_id ;;
  }

  dimension: from_number {
    type: number
    sql: ${TABLE}.from_number ;;
  }

  dimension: recording_url {
    type: string
    sql: ${TABLE}.recording_url ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: to_number {
    type: number
    sql: ${TABLE}.to_number ;;
  }

  dimension: transcription_id {
    type: number
    sql: ${TABLE}.transcription_id ;;
  }

  dimension: unknown_visitor_conversation {
    type: string
    sql: ${TABLE}.unknown_visitor_conversation ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
