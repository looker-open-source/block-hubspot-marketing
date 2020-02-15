view: contact_list_member {
  sql_table_name: @{DATASET_NAME}.CONTACT_LIST_MEMBER ;;

  dimension: added_at {
    type: string
    sql: ${TABLE}.added_at ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: contact_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_list_id ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_list.name, contact_list.id, contact.id]
  }
}