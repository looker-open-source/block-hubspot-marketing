view: calendar_event {
  sql_table_name: @{DATASET_NAME}.CALENDAR_EVENT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: campaign_guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_guid ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: content_group_id {
    type: number
    sql: ${TABLE}.content_group_id ;;
  }

  dimension: content_id {
    type: number
    sql: ${TABLE}.content_id ;;
  }

  dimension: create_content {
    type: string
    sql: ${TABLE}.create_content ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_order {
    type: string
    sql: ${TABLE}.group_order ;;
  }

  dimension: is_recurring {
    type: yesno
    sql: ${TABLE}.is_recurring ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: preview_key {
    type: string
    sql: ${TABLE}.preview_key ;;
  }

  dimension: social_display_name {
    type: string
    sql: ${TABLE}.social_display_name ;;
  }

  dimension: social_username {
    type: string
    sql: ${TABLE}.social_username ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: template_path {
    type: string
    sql: ${TABLE}.template_path ;;
  }

  dimension: topic_ids {
    type: string
    sql: ${TABLE}.topic_ids ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ids {
    type: string
    sql: ${TABLE}.user_ids ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      social_username,
      social_display_name,
      name,
      owner.owner_id,
      owner.last_name,
      owner.first_name
    ]
  }
}