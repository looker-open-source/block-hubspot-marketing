view: deal_contact {
  sql_table_name: spencer-white-tckt87992.hubspot_sales.DEAL_CONTACT ;;

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  measure: count {
    type: count
    drill_fields: [contact.id, deal.id]
  }
}
