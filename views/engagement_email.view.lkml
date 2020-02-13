view: engagement_email {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_EMAIL ;;

  dimension: attached_video_opened {
    type: yesno
    sql: ${TABLE}.attached_video_opened ;;
  }

  dimension: attached_video_watched {
    type: yesno
    sql: ${TABLE}.attached_video_watched ;;
  }

  dimension: email_send_event_id_created {
    type: string
    sql: ${TABLE}.email_send_event_id_created ;;
  }

  dimension: email_send_event_id_id {
    type: number
    sql: ${TABLE}.email_send_event_id_id ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: from_email {
    type: string
    sql: ${TABLE}.from_email ;;
  }

  dimension: from_first_name {
    type: string
    sql: ${TABLE}.from_first_name ;;
  }

  dimension: from_last_name {
    type: string
    sql: ${TABLE}.from_last_name ;;
  }

  dimension: html {
    type: string
    sql: ${TABLE}.html ;;
  }

  dimension: logged_from {
    type: string
    sql: ${TABLE}.logged_from ;;
  }

  dimension: media_processing_status {
    type: yesno
    sql: ${TABLE}.media_processing_status ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.message_id ;;
  }

  dimension: recipient_drop_reasons {
    type: string
    sql: ${TABLE}.recipient_drop_reasons ;;
  }

  dimension: sent_via {
    type: string
    sql: ${TABLE}.sent_via ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: thread_id {
    type: number
    sql: ${TABLE}.thread_id ;;
  }

  dimension: tracker_key {
    type: string
    sql: ${TABLE}.tracker_key ;;
  }

  dimension: validation_skipped {
    type: yesno
    sql: ${TABLE}.validation_skipped ;;
  }

  measure: count {
    type: count
    drill_fields: [from_last_name, from_first_name, engagement.id]
  }
}
