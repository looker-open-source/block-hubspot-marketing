view: contact {
  sql_table_name: @{DATASET_NAME}.CONTACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}.property_email ;;
  }

  dimension: property_star {
    type: string
    sql: ${TABLE}.property_star ;;
  }

  measure: count {
    type: count
    drill_fields: [id, contact_list_member.count, contact_form_submission.count, contact_property_history.count]
  }
}