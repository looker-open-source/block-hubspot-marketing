view: engagement_contact {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.ENGAGEMENT_CONTACT ;;

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id, contact.id]
  }
}
